class AnswersController < ApplicationController

  def index
    @answers = Answer.all
  end

  def past_new
    @past_questions = Question.where(status: 0)

    # @answer_collection = Answer.new(question_id: @past_questions[:id])
    
    @past_questions.each do |question|
      @answers << Answer.new(question_id: question[:id])
    end

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
    binding.pry
    Answer.create(answer_params)
    redirect_to root_path
  end

  def edit
  end

  def update
  end



  private


  def answer_params
    params.require(:answer).permit(:reason, :rank, :question_id).merge(user_id: current_user.id)
  end


end
