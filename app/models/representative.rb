require 'open-uri'
class Representative < ApplicationRecord
  has_many :beliefs, dependent: :destroy
  has_many :issues, through: :beliefs
  has_many :votes, dependent: :destroy
  has_many :bills, through: :votes
  has_many :donations, dependent: :destroy
  has_many :lobbyists, through: :donations
  has_many :recipiants, dependent: :destroy
  has_many :emails, through: :recipiants
  has_many :offices, dependent: :destroy

  validates :name, :profession, :url, :img, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :party, format: { with: /\([DRI](, [A-Z]{1,3})*\)/}
  validates :district, format: { with: /District \d*/}
  validates :rating, format: { with: /[ABCDEF?][+-]?/}

end
