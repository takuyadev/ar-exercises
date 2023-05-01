class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3 }
  validates_numericality_of :annual_revenue, greater_than_or_equal_to: 0
  validate :check_apparels

  before_destroy :check_employees

  private

  def check_apparels
    unless (mens_apparel || womens_apparel)
      errors.add("Please have mens or womens apparel as an option.")
    end
  end

  def check_employees
    if (employees.any?)
      errors.add(:base, "Cannot delete store as there are still employees associated")
      throw :abort
    end
  end
end
