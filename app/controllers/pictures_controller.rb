class PicturesController < ApplicationController
  before_action :set_project

  def index
    @pictures = @project.pictures
  end

  def show
    @picture = @project.pictures.find(params[:id])
  end

  def new
    @picture = @project.pictures.new
  end

  def create
    @picture = @project.pictures.new(picture_params)
    if @picture.save
      redirect_to @project, notice: "Picture successfully created!"
    else
      render :new
    end
  end

  def edit
    @picture = @project.pictures.find(params[:id])
  end

  def update
    @picture = @project.pictures.find(params[:id])
    if @picture.update(picture_params)
      redirect_to @project, notice: "Picture successfully updated!"
    else
      render :edit
    end
  end

  def destroy
    @picture = @project.pictures.find(params[:id])
    @picture.destroy
    redirect_to @project, notice: "Picture successfully deleted!"
  end

private

  def set_project
    @project = Project.find(params[:project_id])
  end

  def picture_params
    params.require(:picture).permit(:title, :image)
  end

end
