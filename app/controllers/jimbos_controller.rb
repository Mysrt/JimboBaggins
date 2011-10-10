class JimbosController < ApplicationController
  # GET /jimbos
  # GET /jimbos.xml
  def index
    @jimbos = Jimbo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @jimbos }
    end
  end

  # GET /jimbos/1
  # GET /jimbos/1.xml
  def show
    @jimbo = Jimbo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @jimbo }
    end
  end

  # GET /jimbos/new
  # GET /jimbos/new.xml
  def new
    @jimbo = Jimbo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @jimbo }
    end
  end

  # GET /jimbos/1/edit
  def edit
    @jimbo = Jimbo.find(params[:id])
  end

  # POST /jimbos
  # POST /jimbos.xml
  def create
    @jimbo = Jimbo.new(params[:jimbo])

    respond_to do |format|
      if @jimbo.save
        format.html { redirect_to(@jimbo, :notice => 'Jimbo was successfully created.') }
        format.xml  { render :xml => @jimbo, :status => :created, :location => @jimbo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @jimbo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /jimbos/1
  # PUT /jimbos/1.xml
  def update
    @jimbo = Jimbo.find(params[:id])

    respond_to do |format|
      if @jimbo.update_attributes(params[:jimbo])
        format.html { redirect_to(@jimbo, :notice => 'Jimbo was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @jimbo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /jimbos/1
  # DELETE /jimbos/1.xml
  def destroy
    @jimbo = Jimbo.find(params[:id])
    @jimbo.destroy

    respond_to do |format|
      format.html { redirect_to(jimbos_url) }
      format.xml  { head :ok }
    end
  end
end
