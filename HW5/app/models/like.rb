class Like < ApplicationRecord
  belongs_to :reactionable, polymorphic: true, optional: true
end
