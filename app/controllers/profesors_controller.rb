class ProfesorsController < ApplicationController
  def cursos
  end
 
 # GET /profesors
  # GET /profesors.xml
  def index
    @profesors = Profesor.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @profesors }
    end
  end

  # GET /profesors/1
  # GET /profesors/1.xml
  def show
    @asignatura_list = Asignatura.all
    @profesor = Profesor.find(params[:id])

  end

  # GET /profesors/new
  # GET /profesors/new.xml
  def new
    @profesor = Profesor.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @profesor }
    end
  end

  # GET /profesors/1/edit
  def edit
    @profesor = Profesor.find(params[:id])
  end

  # POST /profesors
  # POST /profesors.xml
  def create
    @profesor = Profesor.new(params[:profesor])

    respond_to do |format|
      if @profesor.save
        format.html { redirect_to(@profesor, :notice => 'Profesor was successfully created.') }
        format.xml  { render :xml => @profesor, :status => :created, :location => @profesor }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @profesor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /profesors/1
  # PUT /profesors/1.xml
  def update
    params[:profesor][:asignatura_ids] ||= []
    @profesor = Profesor.find(params[:id])
    if @profesor.update_attributes(params[:profesor])
      @malla = Malla.all
      @malla.each do |m|
        @esta = Curso.where("id =?", m.curso_id.to_s)
        if @esta.empty?
          m.destroy
        end
      end
      redirect_to(@profesor, :notice => 'Profesor was successfully updated.') 
    else
      render :action => "edit" 
    end

  end

  # DELETE /profesors/1
  # DELETE /profesors/1.xml
  def destroy
    @curso = Curso.where("profesor_id =?", params[:id])
    @curso.each do |c| 
      c.destroy
    end 

    @profesor = Profesor.find(params[:id])
    @profesor.destroy
    redirect_to(profesors_url) 

  end
end
