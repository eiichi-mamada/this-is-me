class HomeController < ApplicationController
  def index
    @answers = Answer.all
  end
end
