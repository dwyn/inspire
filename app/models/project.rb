class Project < ApplicationRecord
  belongs_to :user
  has_many :project_sections
  has_many :sections, through: :project_sections
  has_many :favorite_projects
  has_many :favorited_by, through: :favorite_projects, source: :user 


  # scope :most_favorited, -> {joins(:favorite_projects).group(:project_id)}
  # Project.joins(:favorite_projects).where(:project_id == :id).group(:project_id, :id).count <- RIP

scope :hottest, -> {joins(:favorite_projects).group(:project_id, :id).order("count(project_id) DESC").first}#! <-- This one!
# scope :hottest, -> {joins(:favorite_projects).group(:project_id, :id).order("count(project_id) DESC").all}#! <-- This one!


  # dont delf yourself
  def self.hottest
    joins(:favorite_projects).select(:project_id).group(:project_id).count.sort do |k, v|
      v[1] <=> k[1]
      #Write code to select 
    end#.flatten
  end
end
