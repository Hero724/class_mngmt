class Student < ActiveRecord::Base

#has_many :courses
has_many :registrations
has_many :courses, through: :registrations

scope :danielle_lee, ->  do
where(full_name: 'danielle_lee')	
end

def self.teachers
	where(title: 'Teacher')
end

def combined_info
	"name: #{full_name} \n" +
	"age: #{age} \n" +
	"bio #{bio}"

end

end
