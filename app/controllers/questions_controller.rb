class QuestionsController < ApplicationController
  
  before_filter :authenticate_user!
  def index
    @questions = Question.all
    if @questions.blank?
      redirect_to new_question_path
    else
      respond_to do |format|
        format.html  
        format.json  { render :json => @questions }
      end
    end
  end
  
  def new
    @question = Question.new
  end
  
  def create 
    @question = current_user.questions.new(params[:question])
   if @question.save
     flash[:message] = 'Question successfully created.'
     redirect_to questions_path
   else
     flash[:error] = 'Question can not created.'
     render 'new'
   end
  end
  
  def show
    @question = Question.find(params[:id])
  end
end
