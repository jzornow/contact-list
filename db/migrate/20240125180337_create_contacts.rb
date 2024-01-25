class CreateContacts < ActiveRecord::Migration[7.1]
  def change
    create_table :contacts do |t|
      t.string :first_name, null: false, comment: 'Contact first name'
      t.string :last_name, null: true, comment: 'Contact last name'
      t.string :phone_number, null: false, comment: 'Contact phone number'

      t.timestamps
    end
  end
end
