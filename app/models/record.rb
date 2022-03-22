class Record < ApplicationRecord
  # validates :activity, presence: true
  # validates :feeling, presence: true
  # validates :condition, presence: true
  # validates :appetite, presence: true
  belongs_to :user
end
