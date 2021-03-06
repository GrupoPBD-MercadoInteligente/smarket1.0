class NotificacionsController < ApplicationController
  before_action :set_notificacion, only: [:show, :edit, :update, :destroy]

  # GET /notificacions
  # GET /notificacions.json
  def index
    @notificacions = Notificacion.all
  end

  # GET /notificacions/1
  # GET /notificacions/1.json
  def show
  end

  # GET /notificacions/new
  def new
    @notificacion = Notificacion.new
  end

  # GET /notificacions/1/edit
  def edit
  end

  # POST /notificacions
  # POST /notificacions.json
  def create
    @notificacion = Notificacion.new(notificacion_params)

    respond_to do |format|
      if @notificacion.save
        format.html { redirect_to @notificacion, notice: 'Notificacion was successfully created.' }
        format.json { render action: 'show', status: :created, location: @notificacion }
      else
        format.html { render action: 'new' }
        format.json { render json: @notificacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notificacions/1
  # PATCH/PUT /notificacions/1.json
  def update
    respond_to do |format|
      if @notificacion.update(notificacion_params)
        format.html { redirect_to @notificacion, notice: 'Notificacion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @notificacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notificacions/1
  # DELETE /notificacions/1.json
  def destroy
    @notificacion.destroy
    respond_to do |format|
      format.html { redirect_to notificacions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notificacion
      @notificacion = Notificacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def notificacion_params
      params.require(:notificacion).permit(:notificacion_id, :usuario_id, :estado_not_id, :notificacio_titulo, :notificacion_texto)
    end
end
