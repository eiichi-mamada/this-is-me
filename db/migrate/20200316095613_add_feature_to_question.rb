class AddFeatureToQuestion < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :feature, :integer, null: false
  end
end
