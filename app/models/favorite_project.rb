class FavoriteProject < ApplicationRecord
  belongs_to :user
  belongs_to :project


  def self.hottest(id)
    group(:project_id).order(DESC)
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