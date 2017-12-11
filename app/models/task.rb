class Task < ApplicationRecord
  has_one :finish
  has_many :details

  def active
    details.create(details:"Hola")
  end
  
  def inactive
    d = Detail.last
    d.delete
  end
end
