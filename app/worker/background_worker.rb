class BackgroundWorker
  include Sidekiq::Worker
  sidekiq_options retry: false

  def perform
    puts "Generate a process in background"
    sleep 5
  end

end