class SectionsController < ApplicationController
  # def index
  #   @course = Course.find(params[:course_id])
  #   @sections = @course.sections.all
  #   render :show
  # end

  def show
    @course = Course.find(params[:course_id])
    @section = @section.find(params[:id])
    render :show
  end

  def new
    @course = Course.find(params[:course_id])
    @section = @course.sections.new
    # @section = Section.new
    render :new
  end

  # def create
  #   @section = Section.new(section_params)
  #   if @section.save
  #     redirect_to sections_path
  #   else
  #     render :new
  #   end
  # end

  def create
    @course = Course.find(params[:course_id])
    @section = @course.sections.new(section_params)
    if @section.save
      redirect_to course_path(@section.course)
    else
      render :new
    end
  end

  def edit
    @course = Course.find(params[:course_id])
    @section = Section.find(params[:id])
    render :edit
  end

  def update
    @section= Section.find(params[:id])
    if @section.update(section_params)
      redirect_to sections_path
    else
      render :edit
    end
  end

  def destroy
    @section = Section.find(params[:id])
    @section.destroy
    redirect_to sections_path
  end

private
  def section_params
    params.require(:section).permit(:title)
  end
end
