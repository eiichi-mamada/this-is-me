class HomeController < ApplicationController
  def index
    past_questions = Question.where(status: 0)
    now_questions = Question.where(status: 1)
    future_questions = Question.where(status: 2)
    #viewへ渡す配列を定義

    @past_total_rank = [0,0,0,0,0,0]
    @now_total_rank = [0,0,0,0,0,0]
    @future_total_rank = [0,0,0,0,0,0]
    # answerの中身があり、featureが０から５のそれぞれの合計値を@past_total_rankに入れる
    past_questions.each do |past_question|
      if past_question.answer.present?
        @past_total_rank[past_question.feature] += past_question.answer.rank
      end
    end
    now_questions.each do |now_question|
      if now_question.answer.present?
        @now_total_rank[now_question.feature] += now_question.answer.rank
      end
    end
    future_questions.each do |future_question|
      if future_question.answer.present?
        @future_total_rank[future_question.feature] += future_question.answer.rank
      end
    end
  end

end
