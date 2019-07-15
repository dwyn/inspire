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
end
