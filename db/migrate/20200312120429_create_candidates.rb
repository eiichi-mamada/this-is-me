class CreateCandidates < ActiveRecord::Migration[5.2]
  def change
    create_table :candidates do |t|
      t.string :sub_content, null: false
      t.references :question, foreign_key: true
      t.timestamps
    end
  end
end
