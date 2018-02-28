class AddRoleToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :is_trainer, :boolean, default: false
  end
end
