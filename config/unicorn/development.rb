require 'analytics-ruby'
after_fork do |server, worker|
  if defined? AnalyticsRuby
    Analytics = AnalyticsRuby          # Alias for convenience
    Analytics.init({
      secret: 'testsecret',  # The secret for Segment.io
      on_error: Proc.new { |status, msg| print msg }  # Optional error handler
    })
  end
end