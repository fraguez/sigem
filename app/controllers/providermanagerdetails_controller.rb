class ProvidermanagerdetailsController < ApplicationController
  before_action :set_providermanagerdetail, only: [:show, :edit, :update, :destroy]

  # GET /providermanagerdetails
  # GET /providermanagerdetails.json
  def index
    @providermanagerdetails = Providermanagerdetail.all
  end

  # GET /providermanagerdetails/1
  # GET /providermanagerdetails/1.json
  def show
  end

  # GET /providermanagerdetails/new
  def new
    @providermanagerdetail = Providermanagerdetail.new
  end

  # GET /providermanagerdetails/1/edit
  def edit
  end

  # POST /providermanagerdetails
  # POST /providermanagerdetails.json
  def create
    @providermanagerdetail = Providermanagerdetail.new(providermanagerdetail_params)

    respond_to do |format|
      if @providermanagerdetail.save
        format.html { redirect_to @providermanagerdetail, notice: 'Providermanagerdetail was successfully created.' }
        format.json { render :show, status: :created, location: @providermanagerdetail }
      else
        format.html { render :new }
        format.json { render json: @providermanagerdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /providermanagerdetails/1
  # PATCH/PUT /providermanagerdetails/1.json
  def update
    respond_to do |format|
      if @providermanagerdetail.update(providermanagerdetail_params)
        format.html { redirect_to @providermanagerdetail, notice: 'Providermanagerdetail was successfully updated.' }
        format.json { render :show, status: :ok, location: @providermanagerdetail }
      else
        format.html { render :edit }
        format.json { render json: @providermanagerdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /providermanagerdetails/1
  # DELETE /providermanagerdetails/1.json
  def destroy
    @providermanagerdetail.destroy
    respond_to do |format|
      format.html { redirect_to providermanagerdetails_url, notice: 'Providermanagerdetail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_providermanagerdetail
      @providermanagerdetail = Providermanagerdetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def providermanagerdetail_params
      params.require(:providermanagerdetail).permit(:id, :officenumber, :extension, :cellnumber, :faxnumber, :officialemail, :secundaryemail, :providermanager_id)
    end
end
