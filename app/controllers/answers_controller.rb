class AnswersController < ApplicationController

  def index
    @answers = Answer.all
  end

  def past_new
    @questions = Question.where(status: 0)
    @answers = AnswerCollection.new(value: 0)
  end

  def now_new
    @questions = Question.where(status: 1)
    @answers = AnswerCollection.new(value: 1)
  end

  def future_new
    @questions = Question.where(status: 2)
    @answers = AnswerCollection.new(value: 2)
  end

  def create

    answers_params.each do |answer|
      Answer.create(answer)
    end
    redirect_to root_path

    # @answers = AnswerCollection.new(answers_params)
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

  def past_index
    @questions = Question.where(status: 0)
  end

  def now_index
    @questions = Question.where(status: 0)
  end

  def future_index
    @questions = Question.where(status: 0)
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
