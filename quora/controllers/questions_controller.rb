get '/' do

 erb :"home"

end

get '/questions/new' do
  erb :"questions/new"
end

get '/questions/:id' do
  @question = Question.find(params[:id])
  @answers = @question.answers
  erb :"questions/show"
end

post '/questions' do
  @new = Question.new(title: params[:title])
  if @new.save
  	redirect '/questions'
  end
end

get '/questions' do
	@questions = Question.all
	erb :"questions/index"
end


get '/questions/:id/edit' do
  @question = Question.find(params[:id])
  erb :"questions/edit"
end


put '/questions/:id' do
  @question = Question.find(params[:id])
  @question.title = params[:title]
  @question.description = params[:description]
  if @question.save
  	redirect "/questions/#{@question.id}"
  end
end

delete '/questions/:id' do
  @question = Question.find(params[:id])
  @question.destroy
  redirect '/questions'
 end


































