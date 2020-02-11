class Group < ActiveRecord::Base
  has_many :user_groups
  has_many :users, through: :user_groups
  belongs_to :owner, class_name: "User"
end