class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    Question.create(question_params)
    redirect_to questions_path
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def question_params
    params.require(:question).permit(:content, :status)
  end
end
