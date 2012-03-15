class RemoveColumn < ActiveRecord::Migration
  def up
    remove_column :badges, :user_count
    remove_column :badges, :follower_reach
  end

  def down
  end
end
