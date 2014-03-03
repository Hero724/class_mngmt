class CoursesController < ApplicationController
  def new
  	@course = Course.new
  end

  def create
  	safe_params = params.require(:course).permit(:title, :description, :start_date)
  	@course = Course.new safe_params
  	if @course.save
  	redirect_to students_path
  else
  	render :new, notice: "Course DIdn't Save!!"
  end
end
end
