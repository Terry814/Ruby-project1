class CreateCardSets < ActiveRecord::Migration
  def change
    create_table :card_sets do |t|
      t.string :name
      t.string :code
      t.datetime :release_date
      t.string :set_type
      t.string :block
      t.boolean :online_only
      t.boolean :current_standard

      t.timestamps
    end

    add_index :card_sets, :name
    add_index :card_sets, :code
    add_index :card_sets, :release_date
    add_index :card_sets, :current_standard
  end
end
