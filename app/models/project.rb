class Project < ApplicationRecord
  belongs_to :user
  has_many :project_sections
  has_many :sections, through: :project_sections
  has_many :favorite_projects
  has_many :favorited_by, through: :favorite_projects, source: :user 


  # scope :most_favorited, -> {joins(:favorite_projects).group(:project_id)}

  # dont delf yourself
  def self.hottest
    # binding.pry
    find_by(id: select(:id).where(fav_count: maximum(:fav_count)))
  end
end
