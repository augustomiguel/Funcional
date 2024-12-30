defmodule Ativ9 do
  @doc "Inicializa o servidor em um processo separado e retorna o PID."
  def start(estoque_cafe, estoque_cha) do
    # os parametros sao a quantidade inicial de pacotes
    # de cafe e cha, respectivamente
    spawn(Ativ9, :loop, [estoque_cafe, estoque_cha])
  end
  # Implemente um servidor que responde as seguintes requisicoes:
  #
  # - { pid, :compra_cafe, n } : processa uma compra de n pacotes de
  #   cafe. se houver pacotes suficientes em estoque, responde { :ok, n }
  #   onde n e' o numero de pacotes comprados. Se nao tiver estoque para
  #   vender n pacotes, vende o que tiver disponivel, respondendo com
  #   { :semestoque, p }, onde p e' o numero de pacotes que estavam
  #   disponiveis.
  #
  # - { pid, :compra_cha, n } : funciona da mesma forma da mensagem para
  #   compra de cafe, mas para compra de pacotes de cha (o estoque de cafe e cha
  #   devem ser mantidos separadamente).
  #
  # - { pid, :quant_cafe } : responde com { :ok, p } onde p e' o numero de
  #   pacotes de cafe atualmente no estoque. Nao altera o estoque.
  #
  # - { pid, :quant_cha } : responde com { :ok, p } onde p e' o numero de
  #   pacotes de cha atualmente no estoque. Nao altera o estoque.
  #
  # Opcionalmente, aceite uma mensagem para finalizar o servidor.
  #
  def loop(cafe, cha) do
    receive do
      {pid, :compra_cafe, n} ->
        comprados = min(n, cafe)
        cafe = max(0, cafe - comprados)
        send(pid, {:ok, comprados})
        loop(cafe, cha)

      {pid, :compra_cha, n} ->
        comprados = min(n, cha)
        cha = max(0, cha - comprados)
        send(pid, {:ok, comprados})
        loop(cafe, cha)

      {pid, :quant_cafe} ->
        send(pid, {:ok, cafe})
        loop(cafe, cha)

      {pid, :quant_cha} ->
        send(pid, {:ok, cha})
        loop(cafe, cha)
    end
  end
end
