class CreateBlinds < ActiveRecord::Migration[6.0]
  def change
    create_table :blinds do |t|
      t.string :name
      t.text :description
      t.decimal :price, precision: 5, scale: 2, default: 0

      t.timestamps
    end
  end
end