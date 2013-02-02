class DeviseCreateUsers < ActiveRecord::Migration
  def self.up
    create_table(:users) do |t|

      # t.database_authenticatable :null => false
      t.string :email, :null => false
      t.string :encrypted_password, :null => false

      # t.rememberable
      t.datetime :remember_created_at

      # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both
      t.integer  :failed_attempts, :default => 0
      t.string   :unlock_token
      t.datetime :locked_at

      t.timestamps
    end

    add_index :users, :email,                :unique => true
    add_index :users, :unlock_token,         :unique => true
  end

  def self.down
    drop_table :users
  end
end
