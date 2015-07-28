# This migration comes from activeadmin_wysihtml5 (originally 20120816182611)
class CreateActiveAdminWysihtml5Assets < ActiveRecord::Migration

  def change
    create_table :assets do |t|
      t.string :storage_uid
      t.string :storage_name
      t.timestamps
    end
  end

end
