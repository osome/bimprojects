class RfisController < ApplicationController
  # GET /rfis
  # GET /rfis.json
  def index
    @rfis = Rfi.all    

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rfis }
    end
  end

  # GET /rfis/1
  # GET /rfis/1.json
  def show
    @rfi = Rfi.find(params[:id])
    @project = @rfi.project

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rfi }
    end
  end

  # GET /rfis/new
  # GET /rfis/new.json
  def new
    @rfi = Rfi.new
    @projects = Project.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rfi }
    end
  end

  # GET /rfis/1/edit
  def edit
    @rfi = Rfi.find(params[:id])
  end

  # POST /rfis
  # POST /rfis.json
  def create
    @rfi = Rfi.new(params[:rfi])

    respond_to do |format|
      if @rfi.save
        Rfi.update_rfizations(@rfi)
                    
        format.html { redirect_to @rfi, notice: 'Rfi was successfully created.' }
        format.json { render json: @rfi, status: :created, location: @rfi }
      else
        format.html { render action: "new" }
        format.json { render json: @rfi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rfis/1
  # PUT /rfis/1.json
  def update
    @rfi = Rfi.find(params[:id])

    respond_to do |format|
      if @rfi.update_attributes(params[:rfi])
        Rfi.update_rfizations(@rfi)

        format.html { redirect_to @rfi, notice: 'Rfi was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rfi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rfis/1
  # DELETE /rfis/1.json
  def destroy
    @rfi = Rfi.find(params[:id])
    @rfi.destroy

    respond_to do |format|
      format.html { redirect_to rfis_url }
      format.json { head :no_content }
    end
  end
end
