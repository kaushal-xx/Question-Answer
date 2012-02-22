class Question < ActiveRecord::Base
  
  belongs_to :user
  has_many :answers
  
  validates :q_value, :presence => true
end
