class RenameColumnInAuthors < ActiveRecord::Migration[6.1]
  def change
    rename_column :authors, :address, :permenant_address
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
