class CreateFormSections < ActiveRecord::Migration[7.1]
  def change
    create_table :form_sections do |t|
      t.string :caption, limit: 255
      t.text :section_hint
      t.bigint :form_id, index: true
      t.integer :sequence
      t.boolean :is_active, default: true
      t.boolean :is_payment_section, default: false
      t.timestamps
    end

    add_foreign_key :form_sections, :forms, column: :form_id
  end
end
