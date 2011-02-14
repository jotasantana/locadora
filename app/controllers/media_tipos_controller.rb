class MediaTiposController < ApplicationController
  # GET /media_tipos
  # GET /media_tipos.xml
  def index
    @media_tipos = MediaTipo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @media_tipos }
    end
  end

  # GET /media_tipos/1
  # GET /media_tipos/1.xml
  def show
    @media_tipo = MediaTipo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @media_tipo }
    end
  end

  # GET /media_tipos/new
  # GET /media_tipos/new.xml
  def new
    @media_tipo = MediaTipo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @media_tipo }
    end
  end

  # GET /media_tipos/1/edit
  def edit
    @media_tipo = MediaTipo.find(params[:id])
  end

  # POST /media_tipos
  # POST /media_tipos.xml
  def create
    @media_tipo = MediaTipo.new(params[:media_tipo])

    respond_to do |format|
      if @media_tipo.save
        format.html { redirect_to(@media_tipo, :notice => 'Media tipo was successfully created.') }
        format.xml  { render :xml => @media_tipo, :status => :created, :location => @media_tipo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @media_tipo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /media_tipos/1
  # PUT /media_tipos/1.xml
  def update
    @media_tipo = MediaTipo.find(params[:id])

    respond_to do |format|
      if @media_tipo.update_attributes(params[:media_tipo])
        format.html { redirect_to(@media_tipo, :notice => 'Media tipo was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @media_tipo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /media_tipos/1
  # DELETE /media_tipos/1.xml
  def destroy
    @media_tipo = MediaTipo.find(params[:id])
    @media_tipo.destroy

    respond_to do |format|
      format.html { redirect_to(media_tipos_url) }
      format.xml  { head :ok }
    end
  end
end
