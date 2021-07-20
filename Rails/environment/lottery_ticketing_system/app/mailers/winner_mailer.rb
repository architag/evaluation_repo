class WinnerMailer < ApplicationMailer
  def prize_email
    @ticket = params[:ticket]
    mail(to: @ticket.customer.email, subject: "Congrats! You won!")
  end
end
