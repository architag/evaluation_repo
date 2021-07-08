module CustomersHelper
  def verification_status(status)
    status ? "Verified" : "Not Verified Yet"
  end
  
  def last_won(last_won_on)
    return "Never Won" if last_won_on == nil
    last_won_on
  end

  def validity_status(status)
    status ? "Valid" : "Not Valid"
  end

  def position(num)
    if num == 1
      "Got 1st Place"
    elsif num == 2
      "Got 2nd Place"
    elsif num == 3
      "Got 3rd Place"
    else
      "Not Won Yet"
    end  
  end
end
