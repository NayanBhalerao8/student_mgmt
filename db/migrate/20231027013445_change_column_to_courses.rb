class ChangeColumnToCourses < ActiveRecord::Migration[6.1]

  # as the change method is not reverseable hence we need to mention wht the rails is supposed to 
  # do while rollbacking
  def up 
    # up is while running the migration
    change_column :courses, :description, :text
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end

  def down 
    # down is while rollbacking the migration
    change_column :courses, :description, :string
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
