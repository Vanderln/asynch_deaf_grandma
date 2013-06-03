get '/' do
  @grandma = params[:grandma]
  erb :index
end

post '/grandma' do
  @grandma = params[:user_input]
  if @grandma != @grandma.upcase
    "Grandma says: speak up, sonny!"
  else
    "Grandma says: No, not since 1983!!!"
  end
end
