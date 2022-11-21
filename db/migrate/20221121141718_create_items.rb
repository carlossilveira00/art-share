class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.integer :value
      t.references :user, null: false, foreign_key: true
      t.string :current_situation
      t.string :category
      t.string :location

      t.timestamps
    end
  end
end
