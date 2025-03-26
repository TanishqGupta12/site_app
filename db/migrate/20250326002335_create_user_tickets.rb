class CreateUserTickets < ActiveRecord::Migration[7.1]
  def change
    create_table :user_tickets do |t|
      t.string :discount_code
      t.references :user, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true
      t.references :ticket, null: false, foreign_key: true
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
