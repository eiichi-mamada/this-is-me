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

  end

  def edit
  end

  def update
  end

  def past_destroy
    questions = Question.where(status: 0)

    questions.each do |question|
      answer = Answer.find_by(question_id: question.id)
      answer.destroy
    end
    redirect_to root_path
  end

  def now_destroy
    questions = Question.where(status: 1)

    questions.each do |question|
      answer = Answer.find_by(question_id: question.id)
      answer.destroy
    end
    redirect_to root_path
  end

  def future_destroy
    questions = Question.where(status: 2)

    questions.each do |question|
      answer = Answer.find_by(question_id: question.id)
      answer.destroy
    end
    redirect_to root_path
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
