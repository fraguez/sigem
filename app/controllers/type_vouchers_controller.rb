class TypeVouchersController < ApplicationController
  before_action :set_type_voucher, only: [:show, :edit, :update, :destroy]
  PAGE_SIZE = 10

  # GET /type_vouchers
  # GET /type_vouchers.json
  def index
    @page = (params[:page] || 0).to_i
    @keywords = params[:keywords]

    search = Search.new(@page, PAGE_SIZE, @keywords)
    @type_vouchers, @number_of_pages = search.type_vouchers_by_name
  end

  # GET /type_vouchers/1
  # GET /type_vouchers/1.json
  def show
  end

  # GET /type_vouchers/new
  def new
    @type_voucher = TypeVoucher.new
  end

  # GET /type_vouchers/1/edit
  def edit
  end

  # POST /type_vouchers
  # POST /type_vouchers.json
  def create
    @type_voucher = TypeVoucher.new(type_voucher_params)

    respond_to do |format|
      if @type_voucher.save
        format.html { redirect_to type_vouchers_url, notice: 'Tipo de Comprobante creado.' }
        format.json { render :show, status: :created, location: @type_voucher }
      else
        format.html { render :new }
        format.json { render json: @type_voucher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_vouchers/1
  # PATCH/PUT /type_vouchers/1.json
  def update
    respond_to do |format|
      if @type_voucher.update(type_voucher_params)
        format.html { redirect_to type_vouchers_url, notice: 'Tipo de Comprobante actualizado.' }
        format.json { render :show, status: :ok, location: @type_voucher }
      else
        format.html { render :edit }
        format.json { render json: @type_voucher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_vouchers/1
  # DELETE /type_vouchers/1.json
  def destroy
    @type_voucher.destroy
    respond_to do |format|
      format.html { redirect_to type_vouchers_url, notice: 'Tipo de Comprobante eliminado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_voucher
      @type_voucher = TypeVoucher.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_voucher_params
      params.require(:type_voucher).permit(:name, :label, :acronym, :xmlSchema)
    end
end
