class ProjectsController < ApplicationController
  before_action :find_project, only: [:show, :edit, :update, :destroy]
  # def index
  #   @projects = Project.all
  # end

  def new
    @project = Project.new
  end

  def create
    # project_params = params.require(:project).permit([:title, :description, :due_date])
    @project = Project.new project_params
    if @project.save
      flash[:notice] = "Project saved successfully"
      redirect_to project_path(@project)
    else
      flash[:alert] = "Project creation failed. Please check below for errors"
      render :new
    end
  end

  def show
    # @project = Project.find params[:id]
  end

  def index
    @projects = Project.all
  end

  def edit
    # @project = Project.find params[:id]
  end

  def update
    # @project = Project.find params[:id]
    # project_params = params.require(:project).permit([:title, :description, :due_date])
    if @project.update project_params
      redirect_to project_path(@project), notice: "Project has been updated"
    else
      render :edit
    end
  end

  def destroy
    # @project = Project.find params[:id]
    @project.destroy
    redirect_to projects_path(@project), notice: "Project - #{@project.title}:  has been deleted successfully!"
  end

  private

  def find_project
    @project = Project.find params[:id]
  end

  def project_params
    project_params = params.require(:project).permit([:title, :description, :due_date])
  end

end
