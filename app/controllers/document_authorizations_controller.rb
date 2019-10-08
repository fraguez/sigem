class DocumentAuthorizationsController < ApplicationController
  before_action :set_document_authorization, only: [:show, :edit, :update, :destroy]
  PAGE_SIZE = 10

  # GET /document_authorizations
  # GET /document_authorizations.json
  def index
    @page = (params[:page] || 0).to_i
    @keywords = params[:keywords]

    search = Search.new(@page, PAGE_SIZE, @keywords)
    @document_authorizations, @number_of_pages = search.document_authorizations_by_name
  end

  # GET /document_authorizations/1
  # GET /document_authorizations/1.json
  def show
  end

  # GET /document_authorizations/new
  def new
    @document_authorization = DocumentAuthorization.new
  end

  # GET /document_authorizations/1/edit
  def edit
  end

  # POST /document_authorizations
  # POST /document_authorizations.json
  def create
    @document_authorization = DocumentAuthorization.new(document_authorization_params)

    respond_to do |format|
      if @document_authorization.save
        format.html { redirect_to document_authorizations_url, notice: 'Tipo de Documento de Exoneración o Autorizacion creado.' }
        format.json { render :show, status: :created, location: @document_authorization }
      else
        format.html { render :new }
        format.json { render json: @document_authorization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /document_authorizations/1
  # PATCH/PUT /document_authorizations/1.json
  def update
    respond_to do |format|
      if @document_authorization.update(document_authorization_params)
        format.html { redirect_to document_authorizations_url, notice: 'Tipo de Documento de Exoneración o Autorizacion actualizado.' }
        format.json { render :show, status: :ok, location: @document_authorization }
      else
        format.html { render :edit }
        format.json { render json: @document_authorization.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /document_authorizations/1
  # DELETE /document_authorizations/1.json
  def destroy
    @document_authorization.destroy
    respond_to do |format|
      format.html { redirect_to document_authorizations_url, notice: 'Document authorization was successfully eliminado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_document_authorization
      @document_authorization = DocumentAuthorization.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def document_authorization_params
      params.require(:document_authorization).permit(:name, :code)
    end
end
