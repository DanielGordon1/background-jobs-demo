class FakeJob < ApplicationJob
  queue_as :default

  def perform
    puts "I am starting an amazing fake job."
    sleep 3
    puts "I am done."
  end
end
