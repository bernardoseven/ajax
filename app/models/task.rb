class Task < ApplicationRecord
  has_one :finish
  
  def active_task
    self.create_finish(active: true)
  end
  
  def inactive_task
    self.finish.destroy
  end
  
end
