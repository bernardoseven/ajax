class Task < ApplicationRecord
  has_one :finish
  has_many :details

  def active(value)
  	if finish.nil?
      create_finish(active: value)
    else
      finish.update(active: value)
    end
  end
  
  def inactive(value)
    finish.update(active: value)
  end
end
