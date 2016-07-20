class CreateTemplateDeckCards < ActiveRecord::Migration
  def change
    create_table :template_deck_cards do |t|
      t.integer :template_deck_id
      t.integer :card_id
      t.integer :quantity

      t.timestamps
    end
  end
end
