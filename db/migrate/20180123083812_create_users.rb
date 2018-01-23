class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :gender
      t.date :dob
      t.string :mobile_number
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
