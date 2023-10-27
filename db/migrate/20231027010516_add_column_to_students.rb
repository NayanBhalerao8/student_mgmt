class AddColumnToStudents < ActiveRecord::Migration[6.1]
  def change
    add_column :students, :contact, :string
    add_column :students, :alternate_contact_number, :string
  end
end
