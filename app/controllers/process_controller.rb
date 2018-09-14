class ProcessController < ApplicationController

  def index
    
  end

  def submit_process
    sleep 5
    render plain: "process has done"
  end

end
