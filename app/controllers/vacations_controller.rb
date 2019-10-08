class VacationsController < ApplicationController
  before_action :set_vacation, only: [:show, :edit, :update, :destroy]
  before_action :set_combo_values, only: [:new, :edit, :update, :create]
  PAGE_SIZE = 10

  # GET /vacations
  # GET /vacations.json
  def index
    @page = (params[:page] || 0).to_i
    @keywords = params[:keywords]

    search = Search.new(@page, PAGE_SIZE, @keywords)
    @vacations, @number_of_pages = search.vacations_by_name
  end

  # GET /vacations/1
  # GET /vacations/1.json
  def show
  end

  # GET /vacations/new
  def new
    @vacation = Vacation.new
  end

  # GET /vacations/1/edit
  def edit
  end

  # POST /vacations
  # POST /vacations.json
  def create
    @vacation = Vacation.new(vacation_params)

    respond_to do |format|
      if @vacation.save
        format.html { redirect_to vacations_url, notice: 'Vacación agregada.' }
        format.json { render :show, status: :created, location: @vacation }
      else
        format.html { render :new }
        format.json { render json: @vacation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vacations/1
  # PATCH/PUT /vacations/1.json
  def update
    respond_to do |format|
      if @vacation.update(vacation_params)
        format.html { redirect_to vacations_url, notice: 'Vacación aprobada.' }
        format.json { render :show, status: :ok, location: @vacation }
      else
        format.html { render :edit }
        format.json { render json: @vacation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vacations/1
  # DELETE /vacations/1.json
  def destroy
    @vacation.destroy
    respond_to do |format|
      format.html { redirect_to vacations_url, notice: 'Vacación eliminada.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vacation
      @vacation = Vacation.find(params[:id])
    end

    def set_combo_values
      @employees = Employee.all.order(:name)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vacation_params
      params.require(:vacation).permit(:detail, :startdate, :enddate, :state, :employee_id)
    end
end
