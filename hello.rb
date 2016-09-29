require 'sinatra'
use Rack::Logger

configure :production, :development do
  enable :logging
end

get '/' do
  log_stuff
  "GET worked"
end

post '/' do
  log_stuff
  "POST worked"
end

def log_stuff
  logger.info "rack env: #{request.env}"
  logger.info "params: #{params.inspect}"
end
