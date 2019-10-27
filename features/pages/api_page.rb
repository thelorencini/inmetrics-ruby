class ApiFilmes
  include HTTParty
  base_uri "https://swapi.co/api/"
  #  def initialize
  #  
  #  end
  def getStartup
    self.class.get('/films/')
  end

  def validaResponse(yourResponse)
    if yourResponse.code != 200
      raise "Não foi possivel realizar GET"
    end
    if yourResponse.message != "OK"
      raise "Message após GET incorreta"
    end
  end

    def trataGet(directorReceive, producerReceive, response)
      i = 0;
      if (directorReceive == "") || (producerReceive == "") || (response.body == "")
        raise "Parametros para buscar filmes não reconhecidos"
      else
        first = directorReceive.to_s
        second = producerReceive.to_s
      end

      item = response['results']

      item.each do |item_new|
        if (item_new['director'].include? first) && (item_new['producer'].include? second)
          i += 1
           #puts item_new['director']
        end
      end
      if i == 0
        raise "Não foram encontrados filmes com os parametros passados"
      end

    end 

end
