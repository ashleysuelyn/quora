get '/questions/:id/answers/new' do 
	@question = Question.find(params[:id])
	erb :':answers/new'
end

post '/questions/:id/answers' do
	@new = Answer.new(answers: params[:answers], question_id: params[:id])
	@new.save
	redirect "/questions/#{params[:id]}"

end
