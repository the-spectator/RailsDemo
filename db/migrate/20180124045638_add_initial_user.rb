class AddInitialUser < ActiveRecord::Migration[5.1]
  def up
    9.times do |i|
      User.create!(name: "user#{i}", gender: "#{i%2==0 ? 'M': 'F'}", dob: "#{Time.now}", mobile_number: "#{(i+1)*(10**9)}", email: "user#{i}@user.com", password: "longlivekattapa")
    end
  end
  def down
    User.delete_all
  end
end
