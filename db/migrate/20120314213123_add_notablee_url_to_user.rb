class AddNotableeUrlToUser < ActiveRecord::Migration
  def change
    add_column :users, :notablee_url, :string

  end
end
