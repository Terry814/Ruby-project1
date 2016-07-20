class CreateTemplateDecks < ActiveRecord::Migration
  def change
    create_table :template_decks do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
