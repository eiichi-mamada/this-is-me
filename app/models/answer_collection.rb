class AnswerCollection
  include ActiveModel::Conversion
  extend ActiveModel::Naming
  extend ActiveModel::Translation
  include ActiveModel::AttributeMethods
  include ActiveModel::Validations

  @@questions = Question.where(status: 0)  #クラス変数を用いてquestionを渡す

  attr_accessor :collection  # ここに作成したanserモデルが格納される

  # 初期化メソッド
  def initialize(attributes = [])
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
      @@questions.each do |question|
        self.collection << Answer.new(question_id: question[:id])
      end
    end
  end

  # レコードが存在するか確認するメソッド
  def persisted?
    false
  end

  # # コレクションをDBに保存するメソッド
  # def save
  #   is_success = true
  #   ActiveRecord::Base.transaction do
  #     collection.each do |result|
  #       # バリデーションを全てかけたいからsave!ではなくsaveを使用
  #       is_success = false unless result.save
  #     end
  #     # バリデーションエラーがあった時は例外を発生させてロールバックさせる
  #     raise ActiveRecord::RecordInvalid unless is_success
  #   end
  #   rescue
  #     p 'エラー'
  #   ensure
  #     return is_success
  # end

end