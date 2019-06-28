class Section < ApplicationRecord
  has_many :project_sections
  has_many :projects, through: :project_sections
end
