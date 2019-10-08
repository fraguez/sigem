class NeighborhoodsController < ApplicationController
  before_action :set_neighborhood, only: [:show, :edit, :update, :destroy]
  before_action :set_combo_values, only: [:new, :edit, :update, :create]
  PAGE_SIZE = 10

  # GET /neighborhoods
  # GET /neighborhoods.json
  def index
    @page = (params[:page] || 0).to_i
    @keywords = params[:keywords]

    search = Search.new(@page, PAGE_SIZE, @keywords)
    @neighborhoods, @number_of_pages = search.neighborhoods_by_name
  end

  # GET /neighborhoods/1
  # GET /neighborhoods/1.json
  def show
  end

  # GET /neighborhoods/new
  def new
    @neighborhood = Neighborhood.new
  end

  # GET /neighborhoods/1/edit
  def edit
  end

  # POST /neighborhoods
  # POST /neighborhoods.json
  def create
    @neighborhood = Neighborhood.new(neighborhood_params)

    respond_to do |format|
      if @neighborhood.save
        format.html { redirect_to neighborhoods_url, notice: 'Barrio Creado.' }
        format.json { render :show, status: :created, location: @neighborhood }
      else
        format.html { render :new }
        format.json { render json: @neighborhood.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /neighborhoods/1
  # PATCH/PUT /neighborhoods/1.json
  def update
    respond_to do |format|
      if @neighborhood.update(neighborhood_params)
        format.html { redirect_to neighborhoods_url, notice: 'Barrio Actualizado.' }
        format.json { render :show, status: :ok, location: @neighborhood }
      else
        format.html { render :edit }
        format.json { render json: @neighborhood.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /neighborhoods/1
  # DELETE /neighborhoods/1.json
  def destroy
    @neighborhood.destroy
    respond_to do |format|
      format.html { redirect_to neighborhoods_url, notice: 'Barrio Eliminad.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_neighborhood
      @neighborhood = Neighborhood.find(params[:id])
    end

    def set_combo_values
      @cities = City.all.order(:id)
      @states = State.all.order(:id)
      @districts = District.all.order(:id)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def neighborhood_params
      params.require(:neighborhood).permit(:code, :name, :district_id, :state_id, :city_id)
    end
end
