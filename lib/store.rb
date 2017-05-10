class Store < ActiveRecord::Base
  has_many :employees

  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true,  greater_than_or_equal_to: 0}
  validate :should_have_mens_or_womens_apparel

  before_destroy :check_employee_number

  private

  def should_have_mens_or_womens_apparel
    if !mens_apparel && !womens_apparel
      errors.add(:base, "the store must carry at least one of the men's or women's apparel")
    end
  end

  def check_employee_number
    if employees.any?
        errors.add(:base, "You can't delete a store with employees")
        throw :abort
    end
  end

end