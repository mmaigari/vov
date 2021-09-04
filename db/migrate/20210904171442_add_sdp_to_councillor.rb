class AddSdpToCouncillor < ActiveRecord::Migration[6.1]
  def change
    add_column :councillors, :sdp, :integer
  end
end
