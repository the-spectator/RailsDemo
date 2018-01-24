# == Schema Information
#
# Table name: addresses
#
#  id         :integer          not null, primary key
#  house_no   :string
#  street     :string
#  city       :string
#  state      :string
#  country    :string
#  pincode    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Address < ApplicationRecord
  validates :house_no,
    presence: true,
    format: {
      with: /\A[A-Z]?\d+\z/
    }
    validates :street, presence: true
    validates :city, presence: true
    validates :state, presence: true
    validates :pincode,
      presence: true,
      format: {
        with: /\A\d{6}\z/
      }
    belongs_to :user
end
