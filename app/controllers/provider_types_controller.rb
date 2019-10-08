class ProviderTypesController < ApplicationController
  before_action :set_provider_type, only: [:show, :edit, :update, :destroy]
  PAGE_SIZE = 10

  # GET /provider_types
  # GET /provider_types.json
  def index
    @page = (params[:page] || 0).to_i
    @keywords = params[:keywords]

    search = Search.new(@page, PAGE_SIZE, @keywords)
    @provider_types, @number_of_pages = search.provider_types_by_name
  end

  # GET /provider_types/1
  # GET /provider_types/1.json
  def show
  end

  # GET /provider_types/new
  def new
    @provider_type = ProviderType.new
  end

  # GET /provider_types/1/edit
  def edit
  end

  # POST /provider_types
  # POST /provider_types.json
  def create
    @provider_type = ProviderType.new(provider_type_params)

    respond_to do |format|
      if @provider_type.save
        format.html { redirect_to provider_types_url, notice: 'Tipo de proveedor creado.' }
        format.json { render :show, status: :created, location: @provider_type }
      else
        format.html { render :new }
        format.json { render json: @provider_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /provider_types/1
  # PATCH/PUT /provider_types/1.json
  def update
    respond_to do |format|
      if @provider_type.update(provider_type_params)
        format.html { redirect_to provider_types_url, notice: 'Tipo de proveedor modificado.' }
        format.json { render :show, status: :ok, location: @provider_type }
      else
        format.html { render :edit }
        format.json { render json: @provider_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /provider_types/1
  # DELETE /provider_types/1.json
  def destroy
    @provider_type.destroy
    respond_to do |format|
      format.html { redirect_to provider_types_url, notice: 'Tipo de proveedor eliminado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_provider_type
      @provider_type = ProviderType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def provider_type_params
      params.require(:provider_type).permit(:description)
    end
end
