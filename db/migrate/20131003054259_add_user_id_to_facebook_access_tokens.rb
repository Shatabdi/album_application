class AddUserIdToFacebookAccessTokens < ActiveRecord::Migration
  def change
    add_column :facebook_access_tokens, :user_id, :integer
  end
end
