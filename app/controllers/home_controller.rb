class HomeController < ApplicationController
  def index
    Analytics.track(user_id: 'someuser',
                    event: 'ran a rails controller')
  end
end
