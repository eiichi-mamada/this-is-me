class AnswersController < ApplicationController
  def index
    @Answer = Answer.all
  end

  def new
    @Answer = Answer.new
  end

  def create
    Answer.create(answer_params)
    redirect_to answers_path
  end

  def edit
  end

  def update
  end

  def show
  end

  private

  def answer_params
    params.require(:answer).permit(:reason, :rank)
  end
end
