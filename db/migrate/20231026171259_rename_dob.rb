class RenameDob < ActiveRecord::Migration[6.1]
  def change
    rename_column :students, :dob, :date_of_birth
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
