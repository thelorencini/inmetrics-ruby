class VagasPage < SitePrism::Page

  element :jobs, '#menu-jobs'
  element :erro, :class, 'error-page'

  def valida_direcionamento
    begin
      jobs.click
    rescue
      raise "Erro ao buscar por vagas"
    end
    sleep 5
  end



end