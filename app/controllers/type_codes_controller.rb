class TypeCodesController < ApplicationController
  before_action :set_type_code, only: [:show, :edit, :update, :destroy]
  PAGE_SIZE = 10

  # GET /type_codes
  # GET /type_codes.json
  def index
    @page = (params[:page] || 0).to_i
    @keywords = params[:keywords]

    search = Search.new(@page, PAGE_SIZE, @keywords)
    @type_codes, @number_of_pages = search.type_codes_by_name
  end

  # GET /type_codes/1
  # GET /type_codes/1.json
  def show
  end

  # GET /type_codes/new
  def new
    @type_code = TypeCode.new
  end

  # GET /type_codes/1/edit
  def edit
  end

  # POST /type_codes
  # POST /type_codes.json
  def create
    @type_code = TypeCode.new(type_code_params)

    respond_to do |format|
      if @type_code.save
        format.html { redirect_to type_codes_url, notice: 'Tipo de Código creado.' }
        format.json { render :show, status: :created, location: @type_code }
      else
        format.html { render :new }
        format.json { render json: @type_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_codes/1
  # PATCH/PUT /type_codes/1.json
  def update
    respond_to do |format|
      if @type_code.update(type_code_params)
        format.html { redirect_to type_codes_url, notice: 'Tipo de Código actualizado.' }
        format.json { render :show, status: :ok, location: @type_code }
      else
        format.html { render :edit }
        format.json { render json: @type_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_codes/1
  # DELETE /type_codes/1.json
  def destroy
    @type_code.destroy
    respond_to do |format|
      format.html { redirect_to type_codes_url, notice: 'Tipo de Código eliminado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_code
      @type_code = TypeCode.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_code_params
      params.require(:type_code).permit(:name, :code)
    end
end
