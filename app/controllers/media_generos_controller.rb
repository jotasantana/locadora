class MediaGenerosController < ApplicationController
  # GET /media_generos
  # GET /media_generos.xml
  def index
    @media_generos = MediaGenero.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @media_generos }
    end
  end

  # GET /media_generos/1
  # GET /media_generos/1.xml
  def show
    @media_genero = MediaGenero.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @media_genero }
    end
  end

  # GET /media_generos/new
  # GET /media_generos/new.xml
  def new
    @media_genero = MediaGenero.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @media_genero }
    end
  end

  # GET /media_generos/1/edit
  def edit
    @media_genero = MediaGenero.find(params[:id])
  end

  # POST /media_generos
  # POST /media_generos.xml
  def create
    @media_genero = MediaGenero.new(params[:media_genero])

    respond_to do |format|
      if @media_genero.save
        format.html { redirect_to(@media_genero, :notice => 'Media genero was successfully created.') }
        format.xml  { render :xml => @media_genero, :status => :created, :location => @media_genero }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @media_genero.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /media_generos/1
  # PUT /media_generos/1.xml
  def update
    @media_genero = MediaGenero.find(params[:id])

    respond_to do |format|
      if @media_genero.update_attributes(params[:media_genero])
        format.html { redirect_to(@media_genero, :notice => 'Media genero was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @media_genero.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /media_generos/1
  # DELETE /media_generos/1.xml
  def destroy
    @media_genero = MediaGenero.find(params[:id])
    @media_genero.destroy

    respond_to do |format|
      format.html { redirect_to(media_generos_url) }
      format.xml  { head :ok }
    end
  end
end
