class RenameColumn < ActiveRecord::Migration
  def up
    rename_column :badges, :user_id, :owner_id
  end

  def down
  end
end
