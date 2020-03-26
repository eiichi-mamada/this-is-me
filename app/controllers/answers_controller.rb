class AnswersController < ApplicationController

  def index
    @answers = Answer.all
  end

  def past_new
    @questions = Question.where(status: 0)
    @answers = AnswerCollection.new

    # @past_questions.each do |question|
    #   @answers << Answer.new(question_id: question[:id])
    # end

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
    answers_params.each do |answer|
      Answer.create(answer)
    end
    
    redirect_to root_path
    
    # @answers = AnswerCollection.new(answers_params)
    # binding.pry
    # if @answers.save
    #   redirect_to root_path
    # else
    #   render :new
    # end
  end

  def edit
  end

  def update
  end



  private

  def answers_params
    answers = []
    params.require(:answers).each do |param|
      answers << param.permit(:reason, :rank, :question_id).merge(user_id: current_user.id)
    end
    return answers  
  end

end
