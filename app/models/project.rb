class Project < ApplicationRecord
  belongs_to :user
  has_many :project_sections
  has_many :sections, through: :project_sections
  
end
