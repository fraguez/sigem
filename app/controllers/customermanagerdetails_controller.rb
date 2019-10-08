class CustomermanagerdetailsController < ApplicationController
  before_action :set_customermanagerdetail, only: [:show, :edit, :update, :destroy]

  # GET /customermanagerdetails
  # GET /customermanagerdetails.json
  def index
    @customermanagerdetails = Customermanagerdetail.all
  end

  # GET /customermanagerdetails/1
  # GET /customermanagerdetails/1.json
  def show
  end

  # GET /customermanagerdetails/new
  def new
    @customermanagerdetail = Customermanagerdetail.new
  end

  # GET /customermanagerdetails/1/edit
  def edit
  end

  # POST /customermanagerdetails
  # POST /customermanagerdetails.json
  def create
    @customermanagerdetail = Customermanagerdetail.new(customermanagerdetail_params)

    respond_to do |format|
      if @customermanagerdetail.save
        format.html { redirect_to customermanagerdetails_url, notice: 'Customermanagerdetail was successfully created.' }
        format.json { render :show, status: :created, location: @customermanagerdetail }
      else
        format.html { render :new }
        format.json { render json: @customermanagerdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customermanagerdetails/1
  # PATCH/PUT /customermanagerdetails/1.json
  def update
    respond_to do |format|
      if @customermanagerdetail.update(customermanagerdetail_params)
        format.html { redirect_to customermanagerdetails_url, notice: 'Customermanagerdetail was successfully updated.' }
        format.json { render :show, status: :ok, location: @customermanagerdetail }
      else
        format.html { render :edit }
        format.json { render json: @customermanagerdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customermanagerdetails/1
  # DELETE /customermanagerdetails/1.json
  def destroy
    @customermanagerdetail.destroy
    respond_to do |format|
      format.html { redirect_to customermanagerdetails_url, notice: 'Customermanagerdetail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customermanagerdetail
      @customermanagerdetail = Customermanagerdetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customermanagerdetail_params
      params.require(:customermanagerdetail).permit(:id, :officenumber, :extension, :cellnumber, :faxnumber, :officialemail, :secundaryemail, :customermanager_id)
    end
end
