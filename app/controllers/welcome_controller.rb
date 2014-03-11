class WelcomeController < ApplicationController

def hello
	@teacher_names = Student.teachers.full_name
	@from_user = params[:test]
	flash[:happy] = "You are on my app!"
end

end
