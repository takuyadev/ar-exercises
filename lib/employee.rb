class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, presence: true
  validates :last_name, presence: true
  #   validates :password, presence: true
  validates_numericality_of :hourly_rate, greater_than_or_equal_to: 40, less_than_or_equal_to: 200
  validates_associated :store

  # Before validation is better than after validation, since we want to insert the default password prior to validation. If we try to insert the password before validation, it's already too late.
  after_create :create_password

  private

  def create_password
    self.password = "asdfasdf"
  end
end
