class AddUuidToBooks < ActiveRecord::Migration[7.0]
  def up
    add_column :books, :uuid, :string, limit: 255
  end

  def down
    remove_column :books, :uuid
  end
end