class AddUuidToCars < ActiveRecord::Migration[7.0]
  def change
    add_column :cars, :uuid, :string, null: false, limit: 255
    add_index :cars, :uuid, unique: true
  end
end