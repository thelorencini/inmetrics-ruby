Dado("que eu acesso o site da Inmetrics") do
  page_home.load
  sleep 5
end

Dado("desejo visualizar as opções de carreira") do
  page_home.clica_carreira
end

Quando("eu selecionar o button para conferir vagas disponiveis") do
  page_home.clica_conferir
end

Entao("devo ser direcionado para pagina de oportunidades") do
  page_vagas = VagasPage.new
  page_vagas.valida_direcionamento
end