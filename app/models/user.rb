class User < ActiveRecord::Base
  has_secure_password
  has_many :user_groups
  has_many :groups, through: :user_groups
  has_one :owned_group, class_name: "Group", foreign_key: "owner_id"
end