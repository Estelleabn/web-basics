get '/' do
  @coach_message = params[:coach_message] || "what do you want kiddy ?"
  # Look in app/views/index.erb
  
  puts "self : #{self}"
  puts "self class: #{self.class}"
  puts "self instance variables from GET '/' route handler: #{self.instance_variables}"
  erb :index
end

post '/coach' do
    answer = params[:what]
    if answer.end_with?("?") 
    	@coach_message = params[:coach_message] || "Your question's so boring"
    else
    	coach_message = params[:coach_message] || "I don't give a sh*t, honey"
    end
    erb :index
end