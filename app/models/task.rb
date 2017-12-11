class Task < ApplicationRecord
  def active_task
    self.update(active: true)
  end
  
  def inactive_task
    self.update(active: false)
  end
end
