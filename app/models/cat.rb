class Cat < ActiveRecord::Base

  validates :age, :name, :sex, presence: true
  validates :age, numericality: true
  validates :sex, inclusion: { in: %w(M F) }

end
