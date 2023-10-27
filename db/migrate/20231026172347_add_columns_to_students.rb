class AddColumnsToStudents < ActiveRecord::Migration[6.1]
  def change
    add_column :students, :local_address, :string
    add_column :students, :permenant_address, :string
  end
end
