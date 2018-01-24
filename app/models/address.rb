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
