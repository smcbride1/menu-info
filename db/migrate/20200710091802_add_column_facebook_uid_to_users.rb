class AddColumnFacebookUidToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :facebook_uid, :integer
  end
end
