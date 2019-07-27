class Project < ApplicationRecord
  belongs_to :user
  has_many :project_sections
  has_many :sections, through: :project_sections
  has_many :favorite_projects
  has_many :favorited_by, through: :favorite_projects, source: :user 

end

