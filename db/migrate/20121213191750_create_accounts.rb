class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.integer :user_id
      t.string :provider
      t.integer :uid
      t.string :access_token
      t.string :access_secret

      t.timestamps
    end
  end
end
