class AddColumnsToAuthentication < ActiveRecord::Migration
  def change
    add_column :authentications, :oauth_token, :string
    add_column :authentications, :oauth_secret, :string

  end
end
