get '/' do

  erb :index
end

get '/new' do
  erb :form
end

post '/' do
  # Create a new album and add it to the $albums array 
  # You should use only one parameter of the params hash named :album
  # You should use only Album#new and Album#save
  new_album = Album.new(params[:album])

  erb :index
end

get '/:id' do
@album = Album.find(params[:id].to_i)
erb :show
end
