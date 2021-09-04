class AddAppToCouncillor < ActiveRecord::Migration[6.1]
  def change
    add_column :councillors, :app, :integer
  end
end
