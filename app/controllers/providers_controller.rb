class ProvidersController < ApplicationController
  before_action :set_provider, only: [:show, :edit, :update, :destroy]
  before_action :set_combo_values, only: [:new, :edit, :update, :create]
  PAGE_SIZE = 10

  # GET /providers
  # GET /providers.json
  def index
    @page = (params[:page] || 0).to_i
    @keywords = params[:keywords]

    search = Search.new(@page, PAGE_SIZE, @keywords)
    @providers, @number_of_pages = search.providers_by_name
  end

  # GET /providers/1
  # GET /providers/1.json
  def show
  end

  # GET /providers/new
  def new
    @provider = Provider.new
  end

  # GET /providers/1/edit
  def edit
  end

  # POST /providers
  # POST /providers.json
  def create
    @provider = Provider.new(provider_params)

    respond_to do |format|
      if @provider.save
        format.html { redirect_to providers_url, notice: 'Proveedor creado.' }
        format.json { render :show, status: :created, location: @provider }
      else
        format.html { render :new }
        format.json { render json: @provider.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /providers/1
  # PATCH/PUT /providers/1.json
  def update
    respond_to do |format|
      if @provider.update(provider_params)
        format.html { redirect_to providers_url, notice: 'Proveedor actualizado.' }
        format.json { render :show, status: :ok, location: @provider }
      else
        format.html { render :edit }
        format.json { render json: @provider.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /providers/1
  # DELETE /providers/1.json
  def destroy
    @provider.destroy
    respond_to do |format|
      format.html { redirect_to providers_url, notice: 'Proveedor eliminado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_provider
      @provider = Provider.find(params[:id])
    end

    def set_combo_values
      @provider_types = ProviderType.all.order(:description)
      @cities = City.all.order(:id)
      @states = State.all.order(:id)
      @districts = District.all.order(:id)
      @neighborhoods = Neighborhood.all.order(:district_id)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def provider_params
      params.require(:provider).permit(:legalcertificate, :name, :businessname, :provider_type_id, :city_id, :state_id, :district_id, :neighborhood_id, :othersing)
    end
end
