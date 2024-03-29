class ProjectsController < ApplicationController
  # GET /projects
  # GET /projects.json
  def index
    #show projects that are not 'Closed'
    @projects = Project.where("status != 'Closed'")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @projects }
    end
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    @project = Project.find(params[:id])
    @employees = @project.employees
    @comments = Comment.where(:project_id => params[:id])
    @rfis = @project.rfis
    @comment = Comment.new
    if current_employee
      @employee = current_employee
    end

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @project }
    end
  end

  # GET /projects/new
  # GET /projects/new.json
  def new
    
    if current_employee
      @project = Project.new

      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @project }
      end
    else      
      redirect_to root_url, notice: "You Must be logged in"
    end
  end

  # GET /projects/1/edit
  def edit
    if current_employee
      @project = Project.find(params[:id])
    else
      redirect_to root_url, notice: "You Must be logged in"
    end
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(params[:project])    
    

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render json: @project, status: :created, location: @project }
      else
        format.html { render action: "new" }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /projects/1
  # PUT /projects/1.json
  def update
    params[:project][:employee_ids] ||= []
    
    @project = Project.find(params[:id])    
    
    respond_to do |format|
      if @project.update_attributes(params[:project])
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    if current_employee && current_employee.admin_flag == "Y"
      @project = Project.find(params[:id])
      @project.destroy

      respond_to do |format|
        format.html { redirect_to projects_url }
        format.json { head :no_content }
      end
    else
      redirect_to root_url, notice: "You Must be administrator"
    end
  end
end
