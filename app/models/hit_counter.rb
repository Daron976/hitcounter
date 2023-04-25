class HitCounter < ApplicationRecord
  validates :application_name, presence: true
  validates :application_counter, presence: true
end
