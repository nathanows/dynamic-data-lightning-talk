class CreateAttributes < ActiveRecord::Migration
  def change
    create_table :custom_attributes do |t|
      t.references :user, index: true, foreign_key: true
      t.string :data_key
      t.string :data_value

      t.timestamps null: false
    end
  end
end
