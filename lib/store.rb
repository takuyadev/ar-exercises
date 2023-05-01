class Store < ActiveRecord::Base
  validates :name, length: { minimum: 3 }
  validates_numericality_of :annual_revenue, greater_than_or_equal_to: 40
  validate :check_apparels

  has_many :employees

  def check_apparels
    unless (mens_apparel || womens_apparel)
      errors.add("Please have mens or womens apparel as an option.")
    end
  end
end
