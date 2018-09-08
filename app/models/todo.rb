class Todo < ApplicationRecord
  has_many :completedtasks
  has_many :users, through: :completedtasks
end
