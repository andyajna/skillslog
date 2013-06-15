class AddNamesToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :first, :string
  	add_column :users, :last, :string
  	add_column :users, :role, :string
  end
end
