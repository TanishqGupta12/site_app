class CreateCourses < ActiveRecord::Migration[7.1]
  def change
    create_table :courses do |t|

      t.boolean :is_active, default: true
      t.string :duration, limit: 255
      t.bigint :category_id, index: true
      t.bigint :event_id, index: true
      t.boolean :has_download_certificate, default: false
      t.boolean :is_paid, default: false
      t.float :total_marks, default: 0
      t.float :passing_points, default: 0
      t.boolean :has_pass_fail_page, default: false
      t.integer :max_attempts, default: 0
      t.datetime :valid_from
      t.datetime :valid_upto
      t.timestamps

    end
    add_foreign_key :courses, :events, column: :event_id, on_delete: :cascade
  end
end