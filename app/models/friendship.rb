class Friendship < ApplicationRecord
  belongs_to :user
  belongs_to :friend, :class_name => "User"

  # scope :requests, -> { where(:confirmed => false)}
  # scope :friends, -> { where(:confirmed => true)}
end
