class AlumnosController < ApplicationController
  # GET /alumnos
  # GET /alumnos.xml
  def index
    @alumnos = Alumno.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @alumnos }
    end
  end

  # GET /alumnos/1
  # GET /alumnos/1.xml
  def show
    @curso_list = Curso.all
    @alumno = Alumno.find(params[:id])

  end

  # GET /alumnos/new
  # GET /alumnos/new.xml
  def new
    @alumno = Alumno.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @alumno }
    end
  end

  # GET /alumnos/1/edit
  def edit
    @alumno = Alumno.find(params[:id])
  end

  # POST /alumnos
  # POST /alumnos.xml
  def create
    @alumno = Alumno.new(params[:alumno])

    respond_to do |format|
      if @alumno.save
        format.html { redirect_to(@alumno, :notice => 'Alumno was successfully created.') }
        format.xml  { render :xml => @alumno, :status => :created, :location => @alumno }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @alumno.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /alumnos/1
  # PUT /alumnos/1.xml
  def update
    params[:group][:cartera_ids] ||= []
    @alumno = Alumno.find(params[:id])
    if @alumno.update_attributes(params[:alumno])
      redirect_to(@alumno, :notice => 'Alumno was successfully updated.') 
    else    @malla = Malla.where("alumno_id =?", params[:id])
    @malla.each do |m| 
      m.destroy
    end
    @alumno = Alumno.find(params[:id])
    @alumno.destroy
    redirect_to(alumnos_url) 

      render :action => "edit" 
    end

  end

  # DELETE /alumnos/1
  # DELETE /alumnos/1.xml
  def destroy
    @malla = Malla.where("alumno_id =?", params[:id])
    @malla.each do |m| 
      m.destroy
    end
    @alumno = Alumno.find(params[:id])
    @alumno.destroy
    redirect_to(alumnos_url) 

  end
end
