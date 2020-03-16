class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table  :questions do |t|
      t.text      :content, null: false
      t.integer   :status,  null: false
      t.timestamps
    end
  end
end
