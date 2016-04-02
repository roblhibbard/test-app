class Ticket < ActiveRecord::Base
  #Validations
  validates :service, presence: true
  validates :description, presence: true
  #Relations
  belongs_to :state
  belongs_to :customer
  
  has_many :items
  accepts_nested_attributes_for :items

end

