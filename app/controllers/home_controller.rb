class HomeController < ApplicationController
  def index

    # @answers = Answer.all

    # @past_independence = past.where(feature: 0)
    # @past_execution = past.where(feature: 1)
    # @past_creativity = past.where(feature: 2)
    # @past_planning = past.where(feature: 3)
    # @past_teamwork = past.where(feature: 4)
    # @past_communication = past.where(feature: 5)

    past_questions = Question.where(status: 0)
    #viewへ渡す配列を定義

    @past_total_rank = [0,0,0,0,0,0]
    # answerの中身があり、featureが０から５のそれぞれの合計値を@past_total_rankに入れる
    past_questions.each do |past_question|
      if past_question.answer.present?
        @past_total_rank[past_question.feature] += past_question.answer.rank
      end
    end
  end

end
