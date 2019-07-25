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

find
create_with
distinct
eager_load
extending
from
group
having
includes
joins
left_outer_joins
limit
lock
none
offset
order
preload
readonly
references
reorder
reverse_order
select
where


# VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false } 
