class JornadasController < ApplicationController
  # GET /jornadas
  # GET /jornadas.json
  def index

    @jornadas = Jornada.paginate(:page => params[:page], :per_page => 10)

    respond_to do |format|
      format.html # index.html.erb
      format.xls  { render :xls => @jornadas = Jornada.all }
      format.xml  { render :xml => @jornadas }      
      format.json { render json: @jornadas }
    end
  end

  # GET /jornadas/1
  # GET /jornadas/1.json
  def show
    @jornada = Jornada.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @jornada }
    end
  end

  # GET /jornadas/new
  # GET /jornadas/new.json
  def new
    @jornada = Jornada.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @jornada }
    end
  end

  # GET /jornadas/1/edit
  def edit
    @jornada = Jornada.find(params[:id])
  end

  # POST /jornadas
  # POST /jornadas.json
  def create
    @jornada = Jornada.new(params[:jornada])

    respond_to do |format|
      if @jornada.save
        format.html { redirect_to jornadas_path, notice: 'La jornada se ha creado correctamente' }
        format.json { render json: @jornada, status: :created, location: @jornada }
      else
        format.html { render action: "new" }
        format.json { render json: @jornada.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /jornadas/1
  # PUT /jornadas/1.json
  def update
    @jornada = Jornada.find(params[:id])

    respond_to do |format|
      if @jornada.update_attributes(params[:jornada])
        format.html { redirect_to jornadas_path, notice: 'La jornada se ha actualizado correctamente' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @jornada.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jornadas/1
  # DELETE /jornadas/1.json
  def destroy
    @jornada = Jornada.find(params[:id])
    @jornada.destroy

    respond_to do |format|
      format.html { redirect_to jornadas_url }
      format.json { head :no_content }
    end
  end
end
