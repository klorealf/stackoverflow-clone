get '/' do
  @tweets = Tweet.all.reverse
  erb :'/tweets/index'
end

get '/tweets/new' do
  if request.xhr?
    erb :'tweets/_new_tweet', layout: false
  else
    erb :'/tweets/new'
  end
end

get '/tweets/:id' do
  @tweet = Tweet.find_by(id: params[:id])
  if request.xhr?
    erb :'/tweets/_details', layout: false
  else
    erb :'/tweets/show'
  end
end

post '/tweets' do
  # p '*'*10
  # p params
  @tweet = Tweet.new(params[:tweet])

  if request.xhr?
    if @tweet.save
      erb :'/tweets/_tweet', locals: {tweet_object: @tweet}, layout: false
    else
      'Fail'
    end
  else
    if @tweet.save
      redirect '/'
    else
      "FAIL"
    end
  end
end
