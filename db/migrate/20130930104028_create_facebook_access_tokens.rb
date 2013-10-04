class CreateFacebookAccessTokens < ActiveRecord::Migration
  def change
    create_table :facebook_access_tokens do |t|
      t.text :access_token

      t.timestamps
    end
  end
end
