class AddAdminToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :admin, :boolean, default: false
    add_column :users, :sexual, :integer
    remove_column :users, :age
    add_column :users, :birthday, :date
  end
end
