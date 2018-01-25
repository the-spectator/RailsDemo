# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Post < ApplicationRecord
  validates :title,
    presence: true,
    length: {maximum: 20}
  validates :content,
    presence: true,
    length: {maximum: 800}
  belongs_to :user
end
