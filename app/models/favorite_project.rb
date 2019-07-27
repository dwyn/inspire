class FavoriteProject < ApplicationRecord
  belongs_to :user
  belongs_to :project


  def self.hottest
      
  end
end