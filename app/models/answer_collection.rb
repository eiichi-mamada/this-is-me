class AnswerCollection
  include ActiveModel::Conversion
  extend ActiveModel::Naming
  extend ActiveModel::Translation
  include ActiveModel::AttributeMethods
  include ActiveModel::Validations

  attr_accessor :collection  # ここに作成したanserモデルが格納される

  # 初期化メソッド
  def initialize(attributes = [], status)
    if attributes.present?
      self.collection = attributes.map do |value|
        Answer.new(
          user_id: value['user_id'],
          question_id: value['question_id'],
          reason: value['reason'],
          rank: value['rank']
        )
      end
    else
      self.collection = []
      questions = Question.where(status: status[:value])
      questions.each do |question|
        self.collection << Answer.new(question_id: question[:id])
      end
    end
  end

end