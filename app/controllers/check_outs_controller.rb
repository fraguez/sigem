class CheckOutsController < ApplicationController
  before_action :set_check_out, only: [:show, :edit, :update, :destroy]
  before_action :set_combo_values, only: [:new, :edit, :update, :create]
  PAGE_SIZE = 10

  # GET /check_outs
  # GET /check_outs.json
  def index
    @page = (params[:page] || 0).to_i
    @keywords = params[:keywords]

    search = Search.new(@page, PAGE_SIZE, @keywords)
    @check_outs, @number_of_pages = search.check_outs_by_name
  end

  # GET /check_outs/1
  # GET /check_outs/1.json
  def show
  end

  # GET /check_outs/new
  def new
    @check_out = CheckOut.new
  end

  # GET /check_outs/1/edit
  def edit
  end

  # POST /check_outs
  # POST /check_outs.json
  def create
    @check_out = CheckOut.new(check_out_params)

    respond_to do |format|
      if @check_out.save
        format.html { redirect_to check_outs_url, notice: 'Registro de Salida Agregado.' }
        format.json { render :show, status: :created, location: @check_out }
      else
        format.html { render :new }
        format.json { render json: @check_out.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /check_outs/1
  # PATCH/PUT /check_outs/1.json
  def update
    respond_to do |format|
      if @check_out.update(check_out_params)
        format.html { redirect_to check_outs_url, notice: 'Check out was successfully updated.' }
        format.json { render :show, status: :ok, location: @check_out }
      else
        format.html { render :edit }
        format.json { render json: @check_out.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /check_outs/1
  # DELETE /check_outs/1.json
  def destroy
    @check_out.destroy
    respond_to do |format|
      format.html { redirect_to check_outs_url, notice: 'Registro de Salida Eliminado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_check_out
      @check_out = CheckOut.find(params[:id])
    end

    def set_combo_values
      @employees = Employee.all.order(:name)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def check_out_params
      params.require(:check_out).permit(:employee_id)
    end
end
