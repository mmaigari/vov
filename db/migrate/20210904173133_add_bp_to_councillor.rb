class AddBpToCouncillor < ActiveRecord::Migration[6.1]
  def change
    add_column :councillors, :bp, :integer
  end
end
