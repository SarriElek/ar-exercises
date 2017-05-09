class Store < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true,  greater_than_or_equal_to: 0}
  validate :should_have_mens_or_womens_apparel
  has_many :employees

  def should_have_mens_or_womens_apparel
    if !mens_apparel && !womens_apparel
      errors.add(:womens_apparel, "the store must carry at least one of the men's or women's apparel")
      errors.add(:mens_apparel, "the store must carry at least one of the men's or women's apparel")
    end
  end

end