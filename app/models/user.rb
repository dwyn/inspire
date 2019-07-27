class User < ApplicationRecord
  has_secure_password
  has_many :projects
  has_many :favorite_projects
  has_many :favorites, through: :favorite_projects, source: :project

  def favorited!(project)
    self.favorites << project
  end

  def unfavorited!(project)
    self.favorites.delete(project)
  end

  def favorited?(project)
    self.favorites.find_by(id: project.id).present?
  end

  def self.has_favorites
    where(favorites: > 0 )
  end

end

# VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false } 
