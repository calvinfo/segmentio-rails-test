class ApplicationController < ActionController::Base
  Analytics.track(event: 'rails-test-thing',
                user_id: 'someuser')
  protect_from_forgery
end
