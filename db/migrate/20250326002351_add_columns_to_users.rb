class AddColumnsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :salutation, :string
    add_column :users, :position, :text
    add_column :users, :organization, :text
    add_column :users, :address, :string
    add_column :users, :city, :string
    add_column :users, :mobile, :string
    add_column :users, :online_status, :string, default: "offline"
    add_column :users, :locale, :string, default: "en"
    add_column :users, :otp, :string
    add_column :users, :avatar, :string
    add_column :users, :authentication_token, :string
    add_column :users, :custom_fields, :text
    add_column :users, :current_event_id, :string
    add_column :users, :f1, :string
    add_column :users, :f2, :string
    add_column :users, :f3, :string
    add_column :users, :f4, :string
    add_column :users, :f5, :string
    add_column :users, :f6, :string
    add_column :users, :f7, :string
    add_column :users, :f8, :string
    add_column :users, :f9, :string
    add_column :users, :f10, :string
    add_column :users, :f11, :string
    add_column :users, :f12, :string
    add_column :users, :f13, :string
    add_column :users, :f14, :string
    add_column :users, :f15, :string
    add_column :users, :role_id, :bigint
    add_foreign_key :users, :roles, column: :role_id, on_delete: :nullify
    add_index :users, :role_id
  end
end
