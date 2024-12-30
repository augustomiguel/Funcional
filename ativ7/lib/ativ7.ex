defmodule Ativ7 do
  # Recursividade de cauda e acumuladores

  # Escreva as funcoes a seguir usando recursividade de cauda. Se precisar,
  # crie funcoes auxiliares que usam um parametro acumulador.

  # Obs: os testes nao vao testar se as funcoes apresentam recursividade
  # de cauda ou nao, apenas se o objetivo da funcao e' cumprido.

  @doc "Obtem o tamanho da lista l."
  def tamanho(l), do:  tamanho_rec(l, 0)
  defp tamanho_rec([], x), do: x
  defp tamanho_rec([_ | tl], x), do: tamanho_rec(tl, x + 1)


  @doc """
  Replica a string s, n vezes.

  Exemplo:
  iex> Ativ7.replica("ruby", 4)
  "rubyrubyrubyruby"
  """
  def replica(s, n), do: replica_rec(s, n, "")

  defp replica_rec(_, 0, x), do: x
  defp replica_rec(s, n, x), do: replica_rec(s, n-1, x <> s)


  @doc """
  Aplica a funcao f em cada elemento da lista l, retornando uma nova lista
  com os elementos transformados.

  Exemplo:
  iex> Ativ7.map([1, 2, 3], fn x -> x * 2 end)
  [2, 4, 6]
  """
  def map(l, f), do: Enum.reverse(map_rec(l, f, []))

  defp map_rec([], _, x), do: x
  defp map_rec([h | tl], f, x), do: map_rec(tl, f, [f.(h) | x])


  @doc "Calcula a soma dos numeros da lista l."
  #def soma_lista(l), do: nil
  def soma_lista(l), do: soma_lista_rec(l, 0)

  defp soma_lista_rec([], x), do: x
  defp soma_lista_rec([h | tl], x), do: soma_lista_rec(tl, x + h)


  #@spec mult_lista(any()) :: nil
  @doc "Calcula o produto dos numeros da lista l."
  #def mult_lista(l), do: nil
  def mult_lista(l), do: mult_lista_rec(l, 1)
  defp mult_lista_rec([], x), do: x
  defp mult_lista_rec([h | tl], x), do: mult_lista_rec(tl, x * h)


  @doc "Retorna uma string que e' a concatenacao de todas as strings na lista ls."
  #def concat_lista(ls), do: nil

  def concat_lista(ls), do: concat_lista_rec(ls, "")

  defp concat_lista_rec([], x), do: x
  defp concat_lista_rec([h | tl], x), do: concat_lista_rec(tl, x <> h)


  @doc """
  Retorna uma lista com os elementos da lista l para os quais o predicado p
  returna true.

  Exemplo:
  iex> Ativ7.filter([10, 2, 15, 9, 42, 27], fn x -> x > 10 end)
  [15, 42, 27]
  """
  #def filter(l, p), do: nil

  def filter(l, p), do: filter_rec(l, [], p)

  defp filter_rec([], x, _), do: x
  defp filter_rec([h | tl], x, p) do
    if p.(h) do
      filter_rec(tl, x ++ [h], p)
    else
      filter_rec(tl, x, p)
    end
  end



  # Opcional: fold_right com recursão de cauda

  # Vimos que duas funções de alta ordem importantes são
  # fold_left e fold_right, que combinam os elementos de uma lista
  # usando uma função passada como parâmetro. A diferença entre
  # fold_left e fold_right é a direção que as operações são agrupadas.
  #
  # Por exemplo, combinando a lista [1, 2, 3] com a operação de soma
  # e elemento inicial 0, fold_left faz (((0 + 1) + 2) + 3), agrupando
  # as somas à esquerda. Já fold_right faz as operações na ordem
  # (1 + (2 + (3 + 0))), agrupando à direita. Para a soma o resultado
  # será o mesmo, mas em operações não associativas como subtração é
  # importante escolher a direção.

  # A função fold_left, da forma que ela normalmente é escrita, já
  # tem recursão em cauda:

  def fold_left([], f, i), do: i
  def fold_left([x | r], f, i), do: fold_left(r, f, f.(i, r))

  # Já fold_right normalmente não é recursiva em cauda:




  def fold_right([], f, i), do: i
  def fold_right([x | r], f, i), do: f.(x, fold_right(r, f, i))

  # Para este exercício opcional, crie uma versão de fold_right
  # com recursividade de cauda. Adicione testes para verificar
  # a funcionalidade da versão com recursividade de causa.

end
