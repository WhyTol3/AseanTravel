class ChangeColumnNameUser < ActiveRecord::Migration
  def change
  	rename_column :users, :f_neme, :f_name
  	rename_column :users, :l_neme, :l_name
  end
end
