class CreateTours < ActiveRecord::Migration[6.1]
  def change
    create_table :tours do |t|
      t.string :name
      t.string :address
      t.integer :price, default: 0
      t.text :content
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
