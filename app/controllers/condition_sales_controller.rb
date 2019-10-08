class ConditionSalesController < ApplicationController
  before_action :set_condition_sale, only: [:show, :edit, :update, :destroy]
  PAGE_SIZE = 10

  # GET /condition_sales
  # GET /condition_sales.json
  def index
    @page = (params[:page] || 0).to_i
    @keywords = params[:keywords]

    search = Search.new(@page, PAGE_SIZE, @keywords)
    @condition_sales, @number_of_pages = search.condition_sales_by_name
  end

  # GET /condition_sales/1
  # GET /condition_sales/1.json
  def show
  end

  # GET /condition_sales/new
  def new
    @condition_sale = ConditionSale.new
  end

  # GET /condition_sales/1/edit
  def edit
  end

  # POST /condition_sales
  # POST /condition_sales.json
  def create
    @condition_sale = ConditionSale.new(condition_sale_params)

    respond_to do |format|
      if @condition_sale.save
        format.html { redirect_to condition_sales_url, notice: 'Condiciones de la venta creado.' }
        format.json { render :show, status: :created, location: @condition_sale }
      else
        format.html { render :new }
        format.json { render json: @condition_sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /condition_sales/1
  # PATCH/PUT /condition_sales/1.json
  def update
    respond_to do |format|
      if @condition_sale.update(condition_sale_params)
        format.html { redirect_to condition_sales_url, notice: 'Condiciones de la venta actualizado.' }
        format.json { render :show, status: :ok, location: @condition_sale }
      else
        format.html { render :edit }
        format.json { render json: @condition_sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /condition_sales/1
  # DELETE /condition_sales/1.json
  def destroy
    @condition_sale.destroy
    respond_to do |format|
      format.html { redirect_to condition_sales_url, notice: 'Condiciones de la venta eliminado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_condition_sale
      @condition_sale = ConditionSale.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def condition_sale_params
      params.require(:condition_sale).permit(:name, :code)
    end
end
