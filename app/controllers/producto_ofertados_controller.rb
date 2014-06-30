class ProductoOfertadosController < ApplicationController
  before_filter :authenticate_usuario!,except:[:index]
  before_action :set_producto_ofertado, only: [:show, :edit, :update, :destroy]

  # GET /producto_ofertados
  # GET /producto_ofertados.json
  def index
    
    @producto_ofertados = ProductoOfertado.all
  end

  # GET /producto_ofertados/1
  # GET /producto_ofertados/1.json
  def show

  end

  # GET /producto_ofertados/new
  def new
    @producto_ofertados= ProductoOfertado.where(usuario_id:current_usuario.id)
    @clase_unit = nil
    @clase_units = ClaseUnit.find(:all, :conditions => {:cla_clase_id => nil } )
    @producto = Producto.new
    @producto_ofertado = ProductoOfertado.new
  end

  # GET /producto_ofertados/1/edit
  def edit
  end

  # POST /producto_ofertados
  # POST /producto_ofertados.json
  def create
    @producto = Producto.new(producto_params)
    @producto_ofertado = ProductoOfertado.new(producto_ofertado_params)

    respond_to do |format|
      if @producto_ofertado.save 
        format.html { redirect_to @producto_ofertado, notice: 'Producto ofertado was successfully created.' }
        format.json { render action: 'show', status: :created, location: @producto_ofertado }
      else
        format.html { render action: 'new' }
        format.json { render json: @producto_ofertado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /producto_ofertados/1
  # PATCH/PUT /producto_ofertados/1.json
  def update
    respond_to do |format|
      if @producto_ofertado.update(producto_ofertado_params)
        format.html { redirect_to @producto_ofertado, notice: 'Producto ofertado was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @producto_ofertado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /producto_ofertados/1
  # DELETE /producto_ofertados/1.json
  def destroy
    @producto_ofertado.destroy
    respond_to do |format|
      format.html { redirect_to producto_ofertados_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_producto_ofertado
      @producto_ofertado = ProductoOfertado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def producto_params
      params.require(:producto).permit(:producto_id, :clase_id,   :producto_nombre, :avatar)
    end
    def producto_ofertado_params
      params.require(:producto_ofertado).permit(:producto_id, :producto_of_id,:usuario_id, :producto_of_cantidad, :producto_of_precio_unitario, :producto_of_fecha_publicacion)
    end
end
