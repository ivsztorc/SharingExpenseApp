class Expense < ActiveRecord::Base
  belongs_to :user
  belongs_to :trip
  mount_uploader :expense_image, ExpenseImageUploader


  
  def human_readable_date
    datepicker.strftime('%d %B %Y')
  end

  def human_readable_time
    starting_time.strftime('%A %B %d %Y, %H:%M')
  end


end
