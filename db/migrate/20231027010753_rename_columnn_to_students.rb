class RenameColumnnToStudents < ActiveRecord::Migration[6.1]
  def change
    rename_column :students, :contact, :permanent_contact_number
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
