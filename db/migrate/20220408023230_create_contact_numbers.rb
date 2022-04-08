class CreateContactNumbers < ActiveRecord::Migration[7.0]
  def change
    create_table :contact_numbers do |t|
      t.string :phone_number
      t.boolean :is_default, :default => false
      t.references :user, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
