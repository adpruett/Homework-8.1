class Pet < ActiveRecord::Base
  validates :name, presence: true,
                    uniqueness: true
  validates :color, presence: true
end
