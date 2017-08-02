get '/' do
  @abuelita = params[:abuelita]
  
  erb :index
  # Visita app/views/index.erb
end


post '/abuelita' do
  p user_input = params[:user_input]
  answer = deaf_grandma(user_input)
  

  if request.xhr?
  	#user_input
  	#trabaja con peticion de AJAX
  	answer
  else
  	#de manera tradicional
  	
  	redirect to ("/?abuelita=#{answer}")
  end

end

def deaf_grandma(word)
	p "Habla"
	if word == word.downcase
		"HUH?! NO TE ESCUCHO, HIJO!"
	elsif word == word.upcase && word != "BYE TQM"
		"NO, NO DESDE 1983" 
	else 
		"BYE TQM"
	end
end

