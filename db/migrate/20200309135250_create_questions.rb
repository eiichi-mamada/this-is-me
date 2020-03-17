class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.text :content, null: false
      t.integer :status, null: false
      t.string :sub_content1
      t.string :sub_content2
      t.string :sub_content3
      t.string :sub_content4
      t.string :sub_content5
      t.string :sub_content6
      t.string :sub_content7
      t.string :sub_content8
      t.timestamps
    end
  end
end
