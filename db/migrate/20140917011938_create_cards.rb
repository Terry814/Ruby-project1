class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :name
      t.string :names, array:true
      t.string :layout
      t.string :mana_cost
      t.integer :cmc
      t.string :colors, array:true
      t.string :card_type
      t.string :supertypes, array:true
      t.string :types, array:true
      t.string :subtypes, array:true
      t.string :rarity
      t.text :text
      t.text :flavor
      t.string :artist
      t.string :number
      t.string :power
      t.string :toughness
      t.integer :loyalty
      t.string :multiverseid
      t.string :variations, array:true
      t.string :imageName
      t.string :watermark
      t.string :border
      t.boolean :timeshifted
      t.string :hand
      t.string :life
      t.string :set_code
      t.integer :card_set_id
      t.integer :price

      t.integer :inventory, default: 0

      t.timestamps
    end

    add_index :cards, :name
    add_index :cards, :card_set_id
  end
end