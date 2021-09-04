class AddLpToCouncillor < ActiveRecord::Migration[6.1]
  def change
    add_column :councillors, :lp, :integer
  end
end
