class AddOriginToInvitations < ActiveRecord::Migration
  def change
    add_column :invitations, :origin, :string
  end
end
