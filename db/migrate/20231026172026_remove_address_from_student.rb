class RemoveAddressFromStudent < ActiveRecord::Migration[6.1]
  def change
    remove_column :students, :address
  end
end
