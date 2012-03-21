class AddColumnToBadges < ActiveRecord::Migration
  def change
    add_column :badges, :category, :string

  end
end
