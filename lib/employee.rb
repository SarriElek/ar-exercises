class Employee < ActiveRecord::Base

  belongs_to :store

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: {greater_than_or_equal_to: 40, less_than_or_equal_to: 200}
  validates :store, presence: true

  # before_save will also fire on Update operations,
  # while before_create will only fire on Creates.
  before_save :create_password

  private
  def create_password
    self.password = (0...8).map { (65 + rand(26)).chr }.join
  end

end