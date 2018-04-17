class LessonsController < ApplicationController
  def new
    @section = Section.find(params[:section_id])
    @lesson = @section.lessons.new
  end

  def create
    @section = Section.find(params[:section_id])
    @lesson = @section.lessons.new(lesson_params)
    if @lesson.save
      redirect_to section_path(@lesson.section)
    else
      render :new
    end
  end

  def edit
    @section = Section.find(params[:section_id])
    @lesson = Lesson.find(params[:id])
    render :edit
  end

  def update
      @lesson = Lesson.find(params[:id])
      if @lesson.update(lesson_params)
        redirect_to sections_path
      else
        render :edit
      end
    end

  def destroy
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
    redirect_to sections_path
  end

  private
    def lesson_params
      params.require(:lesson).permit(:name, :content, :number)
    end

end
