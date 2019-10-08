class IdTypesController < ApplicationController
  before_action :set_id_type, only: [:show, :edit, :update, :destroy]
  PAGE_SIZE = 10

  # GET /id_types
  # GET /id_types.json
  def index
    @page = (params[:page] || 0).to_i
    @keywords = params[:keywords]

    search = Search.new(@page, PAGE_SIZE, @keywords)
    @id_types, @number_of_pages = search.id_types_by_name
  end

  # GET /id_types/1
  # GET /id_types/1.json
  def show
  end

  # GET /id_types/new
  def new
    @id_type = IdType.new
  end

  # GET /id_types/1/edit
  def edit
  end

  # POST /id_types
  # POST /id_types.json
  def create
    @id_type = IdType.new(id_type_params)

    respond_to do |format|
      if @id_type.save
        format.html { redirect_to id_types_url, notice: 'Tipo de Identificación creado.' }
        format.json { render :show, status: :created, location: @id_type }
      else
        format.html { render :new }
        format.json { render json: @id_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /id_types/1
  # PATCH/PUT /id_types/1.json
  def update
    respond_to do |format|
      if @id_type.update(id_type_params)
        format.html { redirect_to id_types_url, notice: 'Tipo de Identificación actualizado.' }
        format.json { render :show, status: :ok, location: @id_type }
      else
        format.html { render :edit }
        format.json { render json: @id_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /id_types/1
  # DELETE /id_types/1.json
  def destroy
    @id_type.destroy
    respond_to do |format|
      format.html { redirect_to id_types_url, notice: 'Tipo de Identificación eliminado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_id_type
      @id_type = IdType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def id_type_params
      params.require(:id_type).permit(:name, :code)
    end
end
