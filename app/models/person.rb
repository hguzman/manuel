class Person < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  validates :identificacion, :nombre, presence: true
  validates :identificacion, uniqueness: true
end
