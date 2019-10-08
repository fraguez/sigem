class ProvidermanagersController < ApplicationController
  before_action :set_providermanager, only: [:show, :edit, :update, :destroy]
  before_action :set_combo_values, only: [:new, :edit, :update, :create]
  PAGE_SIZE = 10

  # GET /providermanagers
  # GET /providermanagers.json
  def index
    @page = (params[:page] || 0).to_i
    @keywords = params[:keywords]

    search = Search.new(@page, PAGE_SIZE, @keywords)
    @providermanagers, @number_of_pages = search.providermanagers_by_name
  end

  # GET /providermanagers/1
  # GET /providermanagers/1.json
  def show
  end

  # GET /providermanagers/new
  def new
    @providermanager = Providermanager.new
    @providermanager.providermanagerdetails.build
  end

  # GET /providermanagers/1/edit
  def edit
    @providermanager.providermanagerdetails.build
  end

  # POST /providermanagers
  # POST /providermanagers.json
  def create
    @providermanager = Providermanager.new(providermanager_params)

    respond_to do |format|
      if @providermanager.save
        format.html { redirect_to providermanagers_url, notice: 'Encargado creado.' }
        format.json { render :show, status: :created, location: @providermanager }
      else
        format.html { render :new }
        format.json { render json: @providermanager.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /providermanagers/1
  # PATCH/PUT /providermanagers/1.json
  def update
    respond_to do |format|
      if @providermanager.update(providermanager_params)
        format.html { redirect_to providermanagers_url, notice: 'Encargado actualizado.' }
        format.json { render :show, status: :ok, location: @providermanager }
      else
        format.html { render :edit }
        format.json { render json: @providermanager.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /providermanagers/1
  # DELETE /providermanagers/1.json
  def destroy
    @providermanager.destroy
    respond_to do |format|
      format.html { redirect_to providermanagers_url, notice: 'Encargado eliminado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_providermanager
      @providermanager = Providermanager.find(params[:id])
    end

    def set_combo_values
      @providers = Provider.all.order(:name)
      @sexes = Sex.all.order(:description)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def providermanager_params
      params.require(:providermanager).permit(:identificationcard, :name, :lastname, :birthday, :sex_id, :provider_id, providermanagerdetails_attributes: [:id, :officenumber, :extension, :cellnumber, :faxnumber, :officialemail, :secundaryemail, :_destroy])
    end
end
