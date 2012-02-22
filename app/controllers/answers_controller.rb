class AnswersController < ApplicationController
  
  def create 
    @question = Question.find(params[:question_id])
    answer = @question.answers.new(params[:answer].merge(:user_id => current_user.id))
   if answer.save
     flash[:message] = 'Answer successfully created.'
   else
     flash[:error] = 'Answer can not created.'
   end
   redirect_to question_path(@question)
  end
end
