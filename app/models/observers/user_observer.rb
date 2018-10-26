class UserObserver < ActiveRecord::Observer
  def after_save(user)
    # require 'pry'
    # binding.pry

    Rails.logger.info "calling after_save for user #{user}"

    unless user.previous_changes.empty?
      Rails.logger.info "previous_changes isn't empty: #{user.previous_changes}"
    end

    unless user.changes.empty?
      Rails.logger.info "changes isn't empty: #{user.changes}"
    end

    unless user.changed.empty?
      Rails.logger.info "changed isn't empty: #{user.changed}"
    end
  end
end
