class CreateBadgehistories < ActiveRecord::Migration
  def change
    create_table :badgehistories do |t|
      t.integer :user_id
      t.integer :badge_id
      t.datetime :dropped_at
      t.integer :user_followers_snapshot

      t.timestamps
    end
  end
end
