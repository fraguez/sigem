class CustomermanagersController < ApplicationController
  before_action :set_customermanager, only: [:show, :edit, :update, :destroy]
  before_action :set_combo_values, only: [:new, :edit, :update, :create]
  PAGE_SIZE = 10

  # GET /customermanagers
  # GET /customermanagers.json
  def index
    @page = (params[:page] || 0).to_i
    @keywords = params[:keywords]

    search = Search.new(@page, PAGE_SIZE, @keywords)
    @customermanagers, @number_of_pages = search.customermanagers_by_name
  end

  # GET /customermanagers/1
  # GET /customermanagers/1.json
  def show
  end

  # GET /customermanagers/new
  def new
    @customermanager = Customermanager.new
    @customermanager.customermanagerdetails.build
  end

  # GET /customermanagers/1/edit
  def edit
    @customermanager.customermanagerdetails.build
  end

  # POST /customermanagers
  # POST /customermanagers.json
  def create
    @customermanager = Customermanager.new(customermanager_params)

    respond_to do |format|
      if @customermanager.save
        format.html { redirect_to customermanagers_url, notice: 'Encargado creado.' }
        format.json { render :show, status: :created, location: @customermanager }
      else
        format.html { render :new }
        format.json { render json: @customermanager.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customermanagers/1
  # PATCH/PUT /customermanagers/1.json
  def update
    respond_to do |format|
      if @customermanager.update(customermanager_params)
        format.html { redirect_to customermanagers_url, notice: 'Encargado actualizado.' }
        format.json { render :show, status: :ok, location: @customermanager }
      else
        format.html { render :edit }
        format.json { render json: @customermanager.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customermanagers/1
  # DELETE /customermanagers/1.json
  def destroy
    @customermanager.destroy
    respond_to do |format|
      format.html { redirect_to customermanagers_url, notice: 'Encargado eliminado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customermanager
      @customermanager = Customermanager.find(params[:id])
    end

    def set_combo_values
      @customers = Customer.all.order(:name)
      @sexes = Sex.all.order(:description)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customermanager_params
      params.require(:customermanager).permit(:customer_id, :identificationcard, :name, :lastname, :birthday, :sex_id, customermanagerdetails_attributes: [:id, :officenumber, :extension, :cellnumber, :faxnumber, :officialemail, :secundaryemail, :_destroy])
    end
end
