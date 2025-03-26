class CreateFormFieldChoices < ActiveRecord::Migration[7.1]
  def change
    create_table :form_field_choices do |t|
      t.integer :sequence
      t.string :caption, limit: 255
      t.boolean :is_active, default: true
      t.boolean :specific_field_if_other, default: false
      t.datetime :created_at, precision: 0
      t.datetime :updated_at, precision: 0
      t.bigint :form_section_field_id, index: true
    end

    add_foreign_key :form_field_choices, :form_section_fields, column: :form_section_field_id
  end
end
