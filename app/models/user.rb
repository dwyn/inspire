class User < ApplicationRecord
  has_secure_password
  has_many :projects
  has_many :favorite_projects
  has_many :favorites, through: :favorite_projects, source: :project

  def favorited!(project)
    self.favorites << project
    if project.fav_count == nil
      project.fav_count = 1
    else
      project.fav_count += 1
    end
    project.save
  end

  def unfavorited!(project)
    self.favorites.delete(project)
    project.fav_count -= 1
    project.save
  end

  def favorited?(project)
    self.favorites.find_by(id: project.id).present?
  end

end

# VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false } 
