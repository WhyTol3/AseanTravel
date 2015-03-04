class AddDetailColumnToUser < ActiveRecord::Migration
  def change
  	
  	add_column :users, :f_neme, :string
  	add_column :users, :l_neme, :string
  	add_column :users, :username, :string
  	add_column :users, :tel, :integer
  	
  end
end
