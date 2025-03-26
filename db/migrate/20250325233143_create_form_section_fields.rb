class CreateFormSectionFields < ActiveRecord::Migration[7.1]
  def change
    create_table :form_section_fields do |t|
      t.text :caption
      t.string :placeholder, limit: 255
      t.text :field_hint
      t.string :field_type, limit: 255
      t.string :data_field, limit: 255
      t.string :value, limit: 255
      t.boolean :onlyReady, default: false
      t.integer :sequence
      t.boolean :is_required, default: false
      t.boolean :is_active, default: true
      t.boolean :is_single_column, default: false
      t.bigint :form_id, index: true
      t.bigint :form_section_id, index: true
      t.boolean :file_upload_filed, default: false
      t.string :file_upload_type, limit: 255, default: "image/jpeg,image/jpg,image/png,application/pdf,application/msword,application/mspowerpoint,application/vnd.openxmlformats-officedocument.presentationml.presentation,application/vnd.openxmlformats-officedocument.wordprocessingml.document,audio/*,video/*"
      t.timestamps
    end

    add_foreign_key :form_section_fields, :forms, column: :form_id
    add_foreign_key :form_section_fields, :form_sections, column: :form_section_id
  end
end
