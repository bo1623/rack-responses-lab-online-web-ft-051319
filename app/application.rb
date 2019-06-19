require "date"
require "pry"

class Application

  def call(env)
    resp = Rack::Response.new
    now = Time.now #was stuck when i used DateTime, instead of Time
    #when it's Time, the spec works by changing :now to a specific time

    if now.hour.to_i < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish

  end

end
