class TicketWorker
  include Sidekiq::Worker

  def perform(*args)
    # Do something
    puts "==============================="
    puts "HELLO WORLD"
    puts "==============================="
  end
end
