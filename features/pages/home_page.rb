class HomePage < SitePrism::Page

  set_url 'https://www.inmetrics.com.br'
  element :btn_carreira, '#carreiras'
  element :btn_confira, :xpath, "//a[contains(@class, 'btn') and contains(., 'confira nossas vagas')]"

  def clica_carreira 
    begin
      btn_carreira.click
    rescue
      raise 'Não foi possivel localizar button carreiras'
    end
    sleep 7
  end

  def clica_conferir
    begin
      btn_confira.click
    rescue
      raise 'Não foi possivel localizar button "Confira Vagas"'
    end
    sleep 5
  end

end