class AddUuidToCars < ActiveRecord::Migration[7.0]
  def up
    unless column_exists?(:cars, :uuid)
      add_column :cars, :uuid, :string, limit: 255
    end
  end

  def down
    if column_exists?(:cars, :uuid)
      remove_column :cars, :uuid
    end
  end
end