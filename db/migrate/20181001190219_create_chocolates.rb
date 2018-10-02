class CreateChocolates < ActiveRecord::Migration[5.2]
  def change
    create_table :chocolates do |t|
      t.string :name
      t.string :choc_type
      t.integer :cost

      t.timestamps
    end
  end
end
