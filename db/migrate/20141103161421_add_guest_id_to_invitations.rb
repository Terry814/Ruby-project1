class AddGuestIdToInvitations < ActiveRecord::Migration
  def change
    add_column :invitations, :guest_id, :integer
  end
end
