class StudentQuiz < ActiveRecord::Base

	######################## Relations ########################

	belongs_to :student
	belongs_to :quiz
    
   

end
