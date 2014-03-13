class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

#has_many :courses
has_many :registrations
has_many :courses, through: :registrations

#validates_presence_of :full_name, :email 

scope :danielle_lee, ->  do
where(full_name: 'danielle_lee')	
end

def self.teachers
	where(title: 'Teacher')
end

def self.full_name
	pluck(:full_name)
end

def combined_info
	"name: #{full_name} \n" +
	"age: #{age} \n" +
	"bio #{bio}"

end

end
