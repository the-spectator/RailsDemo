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

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
