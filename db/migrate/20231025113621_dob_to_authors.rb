class DobToAuthors < ActiveRecord::Migration[6.1]
  def change
    add_column :authors, :dob, :date 
    add_column :authors, :age, :integer 
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
