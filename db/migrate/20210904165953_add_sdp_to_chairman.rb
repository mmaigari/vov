class AddSdpToChairman < ActiveRecord::Migration[6.1]
  def change
    add_column :chairmen, :sdp, :integer
  end
end
