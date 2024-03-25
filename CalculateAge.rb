def find_age(data_atual, mês_atual, ano_atual, data_de_nascimento, mês_nascimento, ano_nascimento)
    dias_mês = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    
    if data_de_nascimento > data_atual
      mês_atual -= 1
      data_atual += dias_mês[mês_nascimento- 1]
    end
  
    if mês_nascimento > mês_atual
      ano_atual -= 1
      mês_atual += 12
    end
  
    data_calculado = data_atual - data_de_nascimento
    mês_calculado = mês_atual - mês_nascimento
    ano_calculado = ano_atual - ano_nascimento
  
    puts "Idade Atual:"
    puts "Anos: #{ano_calculado}, Meses: #{mês_calculado}, Dias: #{data_calculado}"
  end
  
  data_atual = 7
  mês_atual = 12
  ano_atual = 2017
  
  data_de_nascimento = 16
  mês_nascimento = 12
  ano_nascimento = 2009
  
  find_age(data_atual, mês_atual, ano_atual, data_de_nascimento, mês_nascimento, ano_nascimento)