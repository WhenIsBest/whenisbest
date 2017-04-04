module MonthsConversionHelper
  nums_to_months = {1 => "January", 2 => "February", 3 => "March", 4 => "April", 5 => "May", 6 => "June", 7 => "July", 8 => "August", 9 => "September", 10 => "October", 11 => "November", 12 => "December"}
  
  months_to_nums = {"January" => 1, "February" => 2, "March" => 3, "April" => 4, "May" => 5, "June" => 6, "July" => 7, "August" => 8, "September" => 9, "October" => 10, "November" => 11, "December" => 12}
  
  def get_month(month)
    check = event.month.to_i
    if check == 0
      month = get_month(event.month)
    else
      month = event.month
    end   
  end
  
end