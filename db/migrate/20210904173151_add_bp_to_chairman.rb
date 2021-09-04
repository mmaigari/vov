class AddBpToChairman < ActiveRecord::Migration[6.1]
  def change
    add_column :chairmen, :bp, :integer
  end
end
