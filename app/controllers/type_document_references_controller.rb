class TypeDocumentReferencesController < ApplicationController
  before_action :set_type_document_reference, only: [:show, :edit, :update, :destroy]
  PAGE_SIZE = 10

  # GET /type_document_references
  # GET /type_document_references.json
  def index
    @page = (params[:page] || 0).to_i
    @keywords = params[:keywords]

    search = Search.new(@page, PAGE_SIZE, @keywords)
    @type_document_references, @number_of_pages = search.type_document_references_by_name
  end

  # GET /type_document_references/1
  # GET /type_document_references/1.json
  def show
  end

  # GET /type_document_references/new
  def new
    @type_document_reference = TypeDocumentReference.new
  end

  # GET /type_document_references/1/edit
  def edit
  end

  # POST /type_document_references
  # POST /type_document_references.json
  def create
    @type_document_reference = TypeDocumentReference.new(type_document_reference_params)

    respond_to do |format|
      if @type_document_reference.save
        format.html { redirect_to type_document_references_url, notice: 'Tipo de Documento de Referecia creado.' }
        format.json { render :show, status: :created, location: @type_document_reference }
      else
        format.html { render :new }
        format.json { render json: @type_document_reference.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_document_references/1
  # PATCH/PUT /type_document_references/1.json
  def update
    respond_to do |format|
      if @type_document_reference.update(type_document_reference_params)
        format.html { redirect_to type_document_references_url, notice: 'Tipo de Documento de Referecia actualizado.' }
        format.json { render :show, status: :ok, location: @type_document_reference }
      else
        format.html { render :edit }
        format.json { render json: @type_document_reference.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_document_references/1
  # DELETE /type_document_references/1.json
  def destroy
    @type_document_reference.destroy
    respond_to do |format|
      format.html { redirect_to type_document_references_url, notice: 'Tipo de Documento de Referecia eliminado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_document_reference
      @type_document_reference = TypeDocumentReference.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_document_reference_params
      params.require(:type_document_reference).permit(:name, :code)
    end
end
