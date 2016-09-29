require 'sinatra'
use Rack::Logger

configure :production, :development do
  enable :logging
end


get '/' do
  "Hello World!"
end

post '/' do
  logger.info params.inspect
  "Wurked"
end
