defmodule Cliente do
  # Este módulo implementa um cliente para o servidor de estoque
  # de café e chá que está no módulo Ativ9
  
  @doc """
  Realiza uma compra de café e chá do servidor, mostrando os passos e
  resultados na tela.   
  """
  def compra_terminal(serv_pid) do
    # compra 10 unidades de cafe
    IO.puts "Tentando comprar 10 pacotes de cafe..."
    compra_cafe(serv_pid, 10)
    |> mostra_resultado_compra

    # compra 12 unidades de cha
    IO.puts "Tentando comprar 12 pacotes de cha..."
    compra_cha(serv_pid, 12)
    |> mostra_resultado_compra

    # reporta quantidades que restaram
    ncafe = consulta_cafe(serv_pid)
    ncha = consulta_cha(serv_pid)
    IO.puts "Sobraram #{ncafe} pacotes de café e #{ncha} pacotes de chá."    
  end

  @doc """
  Realiza uma compra de café e chá do servidor, e retorna a quantidade
  efetivamente comprada e o estoque restante. 
  """
  def compra(serv_pid, cafe, cha) do
    # compra 10 unidades de cafe
    { _, comprados_cafe } = compra_cafe(serv_pid, cafe)

    # compra 12 unidades de cha
    { _, comprados_cha } = compra_cha(serv_pid, cha)

    # retorna quantidades que restaram
    ncafe = consulta_cafe(serv_pid)
    ncha = consulta_cha(serv_pid)
    { comprados_cafe, comprados_cha, ncafe, ncha }
  end

  def compra_cafe(servidor, unidades) do    
    send servidor, { self(), :compra_cafe, unidades }
    processa_resposta_compra()    
  end

  def compra_cha(servidor, unidades) do
    send servidor, { self(), :compra_cha, unidades }
    processa_resposta_compra()
  end

  def processa_resposta_compra do
    receive do
      { :ok, n } -> { :ok, n }
      { :semestoque, n } -> { :semestoque, n }
    end
  end

  def mostra_resultado_compra({ :ok, n }), do: IO.puts "Ok, comprou #{n} unidades."
  def mostra_resultado_compra({ :semestoque, n }), do:
    IO.puts "Estoque insuficiente, comprou #{n} unidades."

  def consulta_cafe(servidor) do
    send servidor, { self(), :quant_cafe }
    receive do
      { :ok, n } -> n
    end
  end

  def consulta_cha(servidor) do
    send servidor, { self(), :quant_cha }
    receive do
      { :ok, n } -> n
    end
  end
end
