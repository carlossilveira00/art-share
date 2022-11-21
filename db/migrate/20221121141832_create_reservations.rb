class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.references :item, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.date :pickup_date
      t.date :drop_date
      t.string :status
      t.integer :total_value

      t.timestamps
    end
  end
end
