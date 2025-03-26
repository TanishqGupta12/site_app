class CreateEmailContents < ActiveRecord::Migration[7.1]
  def change
    create_table :email_contents do |t|

      t.string :email_type, limit: 255
      t.string :subject, limit: 255
      t.text :content
      t.bigint :role_id, index: true
      t.bigint :event_id, index: true
      t.string :from_email, limit: 255
      t.text :cc_email
      t.boolean :has_attachment
      t.text :attachment
      t.datetime :schedule_email
      t.timestamps

    end
    add_foreign_key :email_contents, :events, column: :event_id
   
  end
end
