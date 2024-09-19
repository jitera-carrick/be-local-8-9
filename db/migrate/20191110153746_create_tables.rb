# typed: true

class CreateTables < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name, null: false
      t.timestamps null: false
    end

    create_table :table_definitions do |t|
      t.references :project, null: false, foregin_key: true
      t.string :name, null: false
      t.string :name_ja
      t.string :dashboard
      t.string :api
      t.string :front
      t.boolean :authentication
      t.timestamps null: false
    end

    create_table :column_definitions do |t|
      t.references :table_definition, null: false, foregin_key: true
      t.string :name, null: false
      t.string :name_ja
      t.integer :column_type
      t.boolean :required
      t.boolean :unique
      t.timestamps null: false
    end

    create_table :relations do |t|
      t.references :table_definition, null: false, foregin_key: true
      t.integer :relation_type
      t.boolean :required
      t.integer :related_table_id
      t.timestamps null: false
    end
  end
end
