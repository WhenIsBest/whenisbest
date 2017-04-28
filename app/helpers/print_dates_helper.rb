module PrintDatesHelper
  def print_date
    {:onchange => 'test'}
  end
  
  def test
    alert(2)
  end
end