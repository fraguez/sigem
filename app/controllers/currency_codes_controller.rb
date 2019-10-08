class CurrencyCodesController < ApplicationController
  before_action :set_currency_code, only: [:show, :edit, :update, :destroy]
  PAGE_SIZE = 10

  # GET /currency_codes
  # GET /currency_codes.json
  def index
    @page = (params[:page] || 0).to_i
    @keywords = params[:keywords]

    search = Search.new(@page, PAGE_SIZE, @keywords)
    @currency_codes, @number_of_pages = search.currency_codes_by_name
  end

  # GET /currency_codes/1
  # GET /currency_codes/1.json
  def show
  end

  # GET /currency_codes/new
  def new
    @currency_code = CurrencyCode.new
  end

  # GET /currency_codes/1/edit
  def edit
  end

  # POST /currency_codes
  # POST /currency_codes.json
  def create
    @currency_code = CurrencyCode.new(currency_code_params)

    respond_to do |format|
      if @currency_code.save
        format.html { redirect_to currency_codes_url, notice: 'Código de Moneda creado.' }
        format.json { render :show, status: :created, location: @currency_code }
      else
        format.html { render :new }
        format.json { render json: @currency_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /currency_codes/1
  # PATCH/PUT /currency_codes/1.json
  def update
    respond_to do |format|
      if @currency_code.update(currency_code_params)
        format.html { redirect_to currency_codes_url, notice: 'Código de Moneda actualizado.' }
        format.json { render :show, status: :ok, location: @currency_code }
      else
        format.html { render :edit }
        format.json { render json: @currency_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /currency_codes/1
  # DELETE /currency_codes/1.json
  def destroy
    @currency_code.destroy
    respond_to do |format|
      format.html { redirect_to currency_codes_url, notice: 'Código de Moneda eliminado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_currency_code
      @currency_code = CurrencyCode.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def currency_code_params
      params.require(:currency_code).permit(:country, :name, :code)
    end
end
