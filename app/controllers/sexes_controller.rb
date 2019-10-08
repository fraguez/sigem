class SexesController < ApplicationController
  before_action :set_sex, only: [:show, :edit, :update, :destroy]
  PAGE_SIZE = 10

  # GET /sexes
  # GET /sexes.json
  def index
    @page = (params[:page] || 0).to_i
    @keywords = params[:keywords]

    search = Search.new(@page, PAGE_SIZE, @keywords)
    @sexes, @number_of_pages = search.sexes_by_name
  end

  # GET /sexes/1
  # GET /sexes/1.json
  def show
  end

  # GET /sexes/new
  def new
    @sex = Sex.new
  end

  # GET /sexes/1/edit
  def edit
  end

  # POST /sexes
  # POST /sexes.json
  def create
    @sex = Sex.new(sex_params)

    respond_to do |format|
      if @sex.save
        format.html { redirect_to sexes_url, notice: 'Género Creado.' }
        format.json { render :show, status: :created, location: @sex }
      else
        format.html { render :new }
        format.json { render json: @sex.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sexes/1
  # PATCH/PUT /sexes/1.json
  def update
    respond_to do |format|
      if @sex.update(sex_params)
        format.html { redirect_to sexes_url, notice: 'Género Actualizado.' }
        format.json { render :show, status: :ok, location: @sex }
      else
        format.html { render :edit }
        format.json { render json: @sex.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sexes/1
  # DELETE /sexes/1.json
  def destroy
    @sex.destroy
    respond_to do |format|
      format.html { redirect_to sexes_url, notice: 'Género Eliminado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sex
      @sex = Sex.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sex_params
      params.require(:sex).permit(:description)
    end
end
