require 'sinatra'

get '/' do
  redirect to('/home')
end

get '/gallery' do
  redirect to('/portfolio')
end

get '/home' do
  erb :index
end

get '/portfolio' do
  erb :gallery
end

get '/about' do
  @skills = ['git', 'HTML', 'CSS', 'Ruby']
  @interests = ['cats', 'art', 'music', 'films', 'coffee']
  erb :about_me
end

get '/favourites' do
  @fav_links = ['<a href="https://thewalrus.ca/">The Walrus</a>', '<a href="https://github.com/dls3">GitHub</a>', '<a href="http://www.espn.com/">ESPN</a>', '<a href="https://www.netflix.com/browse">Netflix</a>', '<a href="https://theringer.com/">The Ringer</a>']
  erb :fav
end
