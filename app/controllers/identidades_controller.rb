class IdentidadesController < ApplicationController
  before_action :set_identidade, only: %i[ show edit update destroy ]

  # GET /identidades or /identidades.json
  def index
    @identidades = Identidade.all
  end

  # GET /identidades/1 or /identidades/1.json
  def show
  end

  # GET /identidades/new
  def new
    @identidade = Identidade.new
  end

  # GET /identidades/1/edit
  def edit
  end

  # POST /identidades or /identidades.json
  def create
    @identidade = Identidade.new(identidade_params)

    respond_to do |format|
      if @identidade.save
        format.html { redirect_to @identidade, notice: "Identidade was successfully created." }
        format.json { render :show, status: :created, location: @identidade }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @identidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /identidades/1 or /identidades/1.json
  def update
    respond_to do |format|
      if @identidade.update(identidade_params)
        format.html { redirect_to @identidade, notice: "Identidade was successfully updated." }
        format.json { render :show, status: :ok, location: @identidade }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @identidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /identidades/1 or /identidades/1.json
  def destroy
    @identidade.destroy
    respond_to do |format|
      format.html { redirect_to identidades_url, notice: "Identidade was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_identidade
      @identidade = Identidade.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def identidade_params
      params.require(:identidade).permit(:grr, :cpf, :discente_id)
    end
end
