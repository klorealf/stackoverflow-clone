#Signup
get '/users/new' do
  @user = User.new
  erb :'users/new'
end

post '/users' do
  @user = User.new(params[:user])
  if @user.save
    session[:user_id] = @user.id
    # use to be:    redirect "/users/#{@user.id}" Changed from here
    redirect "/"
  else
    erb :"users/new"
  end
end

#last item ALWAYS
# Single User profile page
get '/users/:id' do
  @user = User.find_by(id: params[:id])
  redirect '/' unless current_user.id == session[:user_id]
  erb :'users/show'
end
