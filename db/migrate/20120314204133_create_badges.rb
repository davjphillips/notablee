class CreateBadges < ActiveRecord::Migration
  def change
    create_table :badges do |t|
      t.string :title
      t.string :image_url
      t.text :description
      t.integer :times_used
      t.integer :follower_reach
      t.integer :user_id

      t.timestamps
    end
  end
end
