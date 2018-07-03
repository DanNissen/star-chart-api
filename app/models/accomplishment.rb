class Accomplishment < ApplicationRecord
  belongs_to :user
  validates :name, :date_accomplished, :color, presence: true
end
