class User < ApplicationRecord
  has_secure_password
  has_many :projects
  has_many :favorite_projects
  has_many :favorites, through: :favorite_projects, source: :project
  
end
