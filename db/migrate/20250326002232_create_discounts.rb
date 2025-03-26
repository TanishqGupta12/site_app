class CreateDiscounts < ActiveRecord::Migration[7.1]
  def change
    create_table :discounts do |t|
      t.references :event, null: false, foreign_key: true
      t.string :code
      t.boolean :is_active
      t.boolean :is_percentage
      t.string :discount_amount
      t.float :min_discount
      t.float :max_discount
      t.datetime :valid_from
      t.datetime :valid_still

      t.timestamps
    end
  end
end
