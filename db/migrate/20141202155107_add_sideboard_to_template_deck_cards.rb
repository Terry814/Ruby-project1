class AddSideboardToTemplateDeckCards < ActiveRecord::Migration
  def change
    add_column :template_deck_cards, :sideboard, :boolean, default: false
  end
end
