class FormaPagosController < ApplicationController
  # GET /forma_pagos
  # GET /forma_pagos.xml
  def index
    @forma_pagos = FormaPago.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @forma_pagos }
    end
  end

  # GET /forma_pagos/1
  # GET /forma_pagos/1.xml
  def show
    @forma_pago = FormaPago.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @forma_pago }
    end
  end

  # GET /forma_pagos/new
  # GET /forma_pagos/new.xml
  def new
    @forma_pago = FormaPago.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @forma_pago }
    end
  end

  # GET /forma_pagos/1/edit
  def edit
    @forma_pago = FormaPago.find(params[:id])
  end

  # POST /forma_pagos
  # POST /forma_pagos.xml
  def create
    @forma_pago = FormaPago.new(params[:forma_pago])

    respond_to do |format|
      if @forma_pago.save
        format.html { redirect_to(@forma_pago, :notice => 'Forma pago was successfully created.') }
        format.xml  { render :xml => @forma_pago, :status => :created, :location => @forma_pago }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @forma_pago.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /forma_pagos/1
  # PUT /forma_pagos/1.xml
  def update
    @forma_pago = FormaPago.find(params[:id])

    respond_to do |format|
      if @forma_pago.update_attributes(params[:forma_pago])
        format.html { redirect_to(@forma_pago, :notice => 'Forma pago was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @forma_pago.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /forma_pagos/1
  # DELETE /forma_pagos/1.xml
  def destroy
    @forma_pago = FormaPago.find(params[:id])
    @forma_pago.destroy

    respond_to do |format|
      format.html { redirect_to(forma_pagos_url) }
      format.xml  { head :ok }
    end
  end
end
