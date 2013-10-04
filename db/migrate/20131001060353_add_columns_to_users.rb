class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :provider, :text
    add_column :users, :uid, :text
    add_column :users, :name, :text
  end
end
