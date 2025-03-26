class CreateContacts < ActiveRecord::Migration[7.1]
  def change
    create_table :contacts do |t|
      t.string :name, limit: 255
      t.string :email, limit: 255
      t.string :subject, limit: 255
      t.string :message, limit: 255
      t.bigint :event_id, null: false, index: true
      t.timestamps
    end

    add_foreign_key :contacts, :events, column: :event_id
  end
end
