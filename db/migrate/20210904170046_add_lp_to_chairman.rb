class AddLpToChairman < ActiveRecord::Migration[6.1]
  def change
    add_column :chairmen, :lp, :integer
  end
end
