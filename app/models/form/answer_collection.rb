class Form::AnswerCollection
  include ActiveModel::Model
  include ActiveModel::Callbacks
  include ActiveModel::Validations
  include ActiveModel::Validations::Callbacks

  DEFAULT_ITEM_COUNT = 12
  attr_accessor :answers

  def initialize(attributes = {})
    super attributes
    self.answers = DEFAULT_ITEM_COUNT.times.map { Answer.new } unless answers.present?
  end

  def answers_attributes=(attributes)
    self.answers = attributes.map do |_, answer_attributes|
      Form::Answer.new(answer_attributes).tap { |v| v.availability = false }
    end
  end

  def valid?
    valid_answers = target_answers.map(&:valid?).all?
    super && valid_answers
  end

  def save
    return false unless valid?
    Answer.transaction { target_answers.each(&:save!) }
    true
  end

end