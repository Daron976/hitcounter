class HitCounter < ApplicationRecord
  validates :application_name, presence: true
end
