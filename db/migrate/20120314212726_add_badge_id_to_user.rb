class AddBadgeIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :badge_id, :integer

  end
end
