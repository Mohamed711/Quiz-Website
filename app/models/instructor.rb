class Instructor < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :token_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable
         
        ######################## Relations ########################

	has_and_belongs_to_many :students
	has_many :subjects
	has_many :quizzes

        ######################## validations #######################
  # validate :instructor_name_is_present_and_allowed


	validates :gender,
            :presence => true,
					  :inclusion => {:in => ["male", "female"]}
    
 
  # validates :name,
  #       :presence => true,
  #       format:{with: /\A[a-zA-Z]+\z/,
  #         message:"only allows letters"}
          
    # def instructor_name_is_present_and_allowed

    # 	if self.name.present?
    # 		if !(self.name.match(/\s/) or self.name.match(/\A[a-zA-Z]+\Z/))
    # 			errors.add(:name, "only letters and spaces are allowed")
    # 		elsif !self.name.match(/\s/)
    # 			errors.add(:name, "the full name should be divided by spaces")
    # 		end
    # 	else 
    # 		errors.add(:name, "name can't be blank")
    # 	end	
    # end
end
