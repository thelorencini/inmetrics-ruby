#language:pt

@api
Funcionalidade: Manter dados de Films através da API
    Como um usuário do sistema
    Eu quero realizar as requisições na API


    Esquema do Cenario: Get de dados de filmes filtrados 
        Dado o endereco da API para manter films
      	Quando eu realizar uma requisição para pegar as informações
	      Entao irei filtrar filmes por diretor "<diretor>" e produtor "<produtor>"
      	Exemplos:
	    	| diretor     | produtor    |
	    	| George Lucas|Rick McCallum| 
        