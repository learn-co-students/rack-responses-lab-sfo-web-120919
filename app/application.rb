# require 'pry'
class Application

  def call(env)
    resp = Rack::Response.new
    the_time = Time.now 
    # if the_time.hour >= 12 
    #   resp.write "Good Afternoon!"
    # else 
    # resp.write "Good Morning!"
    # end
    the_time.hour >= 12 ? resp.write("Good Afternoon!") : resp.write("Good Morning!")

  resp.finish
  end
end

# the_time.hour >= 12 ? resp.write("Good Afternoon!") : resp.write("Good Morning!")
