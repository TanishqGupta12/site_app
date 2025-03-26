class CreateTickets < ActiveRecord::Migration[7.1]
  def change
    create_table :tickets do |t|
      t.string :title
      t.references :event, null: false, foreign_key: true
      t.float :price
      t.boolean :is_active
      t.string :currency
      t.float :min_user_limit
      t.boolean :is_group
      t.boolean :is_donation
      t.datetime :valid_from
      t.datetime :valid_still
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
