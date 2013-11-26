class Person < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :terms, acceptance: true
  validates :email, presence: true,
                    uniqueness: true
  validates :age, presence: true,
                  numericality: true,
                  inclusion: {in:18..85,
                                message: "Must be between 18 and 85"
                              }
end
