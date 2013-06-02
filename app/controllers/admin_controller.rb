class AdminController < ApplicationController
  # GET /admin
  def index  
    
    respond_to do |format|
      format.html # index.html.erb
    end
  end
end
