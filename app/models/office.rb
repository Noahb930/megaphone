class Office < ApplicationRecord
  belongs_to :representative

  validates :name, :address, :city, presence: true
  validates :phone,:fax, format: { with: /\(\d{3}\) \d{3}-\d{4}/}, :allow_blank => true
  validates :zipcode, format: { with: /\d{5}/}, :allow_blank => true
end
