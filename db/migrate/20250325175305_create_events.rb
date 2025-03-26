class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description

      t.string :slug
      t.text :address
      t.string :email
      t.string :phone
      t.string :time_zone

      t.text :custom_css
      t.text :custom_js
      t.text :terms_and_conditions
      t.text :about_text

      t.string :publishable_key
      t.string :secret_key

      t.text :footer_text
      t.string :gallery_text
      t.boolean :hide_blog
      t.text :page_content
      t.boolean :hide_about_page
      t.boolean :hide_category
      t.boolean :hide_courses
      t.boolean :hide_gallery
      t.boolean :hide_info
      t.boolean :hide_teacher_page

      t.timestamps
    end
  end
end
