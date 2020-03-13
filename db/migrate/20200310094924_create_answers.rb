class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.references :user,      foreign_key: true
      t.references :question,  foreign_key: true
      t.text       :reason,    null: false
      t.integer    :rank,      null: false
      t.timestamps
    end
  end
end
