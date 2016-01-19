class Expense < ActiveRecord::Base
  belongs_to :user
  mount_uploader :expense_image, ExpenseImageUploader


  
  def human_readable_date
    created_at.strftime('%d %B %Y')
  end

  def human_readable_time
    starting_time.strftime('%A %B %d %Y, %H:%M')
  end


end
