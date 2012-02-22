class Answer < ActiveRecord::Base
  
  belongs_to :user
  belongs_to :question
  
  validates :a_value, :presence => true
end
