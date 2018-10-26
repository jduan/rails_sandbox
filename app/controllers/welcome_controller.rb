class WelcomeController < ApplicationController
  def index
    Rails.logger.info "calling welcome#index"
  end
end
