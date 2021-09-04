class CreateChairmen < ActiveRecord::Migration[6.1]
  def change
    create_table :chairmen do |t|
      t.string :lga
      t.string :ward
      t.string :pollingunit
      t.integer :total_votes
      t.integer :valid_votes
      t.integer :invalid_votes
      t.integer :apc
      t.integer :apga
      t.integer :apm
      t.integer :nnpp
      t.integer :pdp
      t.integer :prp
      t.integer :user_id

      t.timestamps
    end
    add_index :chairmen, :user_id
  end
end
