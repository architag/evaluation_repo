module PurchasesHelper
  def status(position_won, validity_status)
    if position_won == 1
      "1st Prize"
    elsif position_won == 2
      "2nd Prize"
    elsif position_won == 3
      "3rd Prize"
    elsif validity_status == false
      "Expired"
    else
      "Valid"
    end 
  end
end
