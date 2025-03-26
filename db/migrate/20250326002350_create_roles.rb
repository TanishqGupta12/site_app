class CreateRoles < ActiveRecord::Migration[7.1]
  def change
    create_table :roles do |t|

      t.string  :name, limit: 255, null: false, index: true
      t.boolean :active, default: true
      t.timestamps
      
    end
  end
end
