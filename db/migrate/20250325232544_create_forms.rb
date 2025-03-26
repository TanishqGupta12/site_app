class CreateForms < ActiveRecord::Migration[6.1]
  def change
    create_table :forms do |t|
      t.string :caption, limit: 255
      t.text :description
      t.bigint :event_id, index: true
      t.string :slug, limit: 255
      t.boolean :is_active, default: true
      t.string :registration_successful_message, default: "Registered Successfully. A confirmation mail is sent to you. Thank you!", limit: 255
      t.string :registration_updated_successful_message, default: "Profile Updated Successfully", limit: 255
      t.timestamps
    end

    add_foreign_key :forms, :events, column: :event_id
  end
end
