class AsignaturasController < ApplicationController
  # GET /asignaturas
  # GET /asignaturas.xml
  def index
    @asignaturas = Asignatura.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @asignaturas }
    end
  end

  # GET /asignaturas/1
  # GET /asignaturas/1.xml
  def show
    @asignatura = Asignatura.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @asignatura }
    end
  end

  # GET /asignaturas/new
  # GET /asignaturas/new.xml
  def new
    @asignatura = Asignatura.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @asignatura }
    end
  end

  # GET /asignaturas/1/edit
  def edit
    @asignatura = Asignatura.find(params[:id])
  end

  # POST /asignaturas
  # POST /asignaturas.xml
  def create
    @asignatura = Asignatura.new(params[:asignatura])

    respond_to do |format|
      if @asignatura.save
        format.html { redirect_to(@asignatura, :notice => 'Asignatura was successfully created.') }
        format.xml  { render :xml => @asignatura, :status => :created, :location => @asignatura }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @asignatura.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /asignaturas/1
  # PUT /asignaturas/1.xml
  def update
    @asignatura = Asignatura.find(params[:id])

    respond_to do |format|
      if @asignatura.update_attributes(params[:asignatura])
        format.html { redirect_to(@asignatura, :notice => 'Asignatura was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @asignatura.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /asignaturas/1
  # DELETE /asignaturas/1.xml
  def destroy
    @curso = Curso.where("asignatura_id =?", params[:id])
    @curso.each do |c| 
      c.destroy
    end 

    @asignatura = Asignatura.find(params[:id])
    @asignatura.destroy
    redirect_to(asignaturas_url)

  end
end
