class HomeController < ApplicationController
  def index
    @answers = Answer.all

    @past = Question.where(status: 0)
    @past_independence = @past.where(feature: 0)
    @past_execution = @past.where(feature: 1)
    @past_creativity = @past.where(feature: 2)
    @past_planning = @past.where(feature: 3)
    @past_teamwork = @past.where(feature: 4)
    @past_communication = @past.where(feature: 5)

  end

end
