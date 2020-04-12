class Office < ApplicationRecord
  belongs_to :representative, dependent: :destroy

  validates :name, :address, :city, presence: true
  validates :phone, :fax, format: { with: /\(\d{3}\) \d{3}-\d{3}/}
  validates :zipcode, format: { with: /\d{5}/}
end
