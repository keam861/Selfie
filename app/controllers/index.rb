get '/' do
  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  @photos = Photo.all

  erb :index
end

post '/upload' do
  puts "=" * 50
  puts params[:photo]
  @photo = Photo.new(params[:photo])
  @photo.save!
  puts "*" * 50
  puts @photo
  redirect '/'
end
