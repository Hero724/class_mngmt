class WelcomeController < ApplicationController

def hello
	@teacher_names = Student.teachers.full_name
	@from_user = params[:test]
	flash[:alert] = "You are on my app!"
	render 'shared/fancy_hello'
end

end
