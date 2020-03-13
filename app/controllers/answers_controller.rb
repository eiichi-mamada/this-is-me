class AnswersController < ApplicationController

  def index
    @answers = Answer.all
  end

  def past_new
    @answer           = Answer.new
    @questions_past   = Question.where(status: 0)
  end

  def now_new
    @answer           = Answer.new
    @questions_now    = Question.where(status: 1)
  end

  def future_new
    @answer           = Answer.new
    @questions_future = Question.where(status: 2)
  end

  def create
    Answer.create(answer_params)
    redirect_to root_path
  end

  def edit
  end

  def update
  end



  private


  def answer_params
    params.require(:answer).permit(:reason, :rank)
  end


end
