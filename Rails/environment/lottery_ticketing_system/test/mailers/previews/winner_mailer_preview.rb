# Preview all emails at http://localhost:3000/rails/mailers/winner_mailer
class WinnerMailerPreview < ActionMailer::Preview
  def prize_email
    ticket = Ticket.last
    WinnerMailer.with(ticket: ticket).prize_email
  end
end
