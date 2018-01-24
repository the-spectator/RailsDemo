# == Schema Information
#
# Table name: users
#
#  id            :integer          not null, primary key
#  name          :string
#  gender        :string
#  dob           :date
#  mobile_number :string
#  email         :string
#  password      :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  last_name     :string
#

class User < ApplicationRecord
  validates :name,
    presence: true,
    format: {
      with: /\A[a-zA-Z]\w*\z/
    }

  validates :email,
    presence: true,
    format: {
      with: /\A[a-zA-Z]\w*@\w*[.]com\z/
    }

  validates :mobile_number,
    presence: true,
    format: {
      with: /\A\d{10}\z/
    }

  validates :password,
    presence: true,
    length: {
      minimum: 8
    }
  validates :gender,
    presence: true,
    inclusion: {
      in: %w(M F O),
      message: "%{value} is not valid!"
    }
  
  validates :dob, presence: true
  has_one :address
end
