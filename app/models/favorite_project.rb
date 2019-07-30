class FavoriteProject < ApplicationRecord
  belongs_to :user
  belongs_to :project


  def self.hottest
    binding.pry
    # group(:project_id).order("count(project_id) DESC").first
    # group(:project_id).count
    count(:project_id).group(“product_id”).order(“count desc”)
  end

end


# find
# create_with
# distinct
# eager_load
# extending
# from
# group
# having
# includes
# joins
# left_outer_joins
# limit
# lock
# none
# offset
# order
# preload
# readonly
# references
# reorder
# reverse_order
# select
# where