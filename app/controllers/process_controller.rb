class ProcessController < ApplicationController

  def index
    
  end

  def submit_process
    # generate_process
    BackgroundWorker.perform_async
    render plain: "process has done"
  end

  private

  def generate_process
    sleep 5
  end

end
