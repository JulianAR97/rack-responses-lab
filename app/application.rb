class Application
    def call(env)
        resp = Rack::Response.new
        
        ##This gives time as 0000 to 2400
        time = Time.now.strftime("%H%M").to_i

        time < 1200 ? resp.write("Good Morning!") : resp.write("Good Afternoon!")
        resp.finish
    end
end