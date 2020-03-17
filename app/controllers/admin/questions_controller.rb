class Admin::QuestionsController < ApplicationController
    before_action :if_not_admin

  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    Question.create(question_params)
    redirect_to admin_questions_path
  end

  def edit
  end

  def update
  end

  def delete
  end

  private
  def if_not_admin
    redirect_to root_path unless current_user.admin?
  end

  def question_params
    params.require(:question).permit(:content, :status, :feature)
  end




end
