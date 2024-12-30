defmodule Ativ3 do
  @moduledoc "Codigo para a Atividade 3 da disciplina Programacao Funcional"
  @doc "Retorna o primeiro elemento da lista l, ou nil caso l tenha menos de 1 elemento."
  def primeiro([]), do: nil
  def primeiro([x | _tail ] ), do: x
  @doc "Retorna o terceiro elemento da lista l, ou nil caso l tenha menos de 3 elementos."
  def terceiro([_ , _ , z | _ ] ), do: z
  def terceiro(_), do: ni

  @doc "obtem o n-esimo elemento de uma lista"
  def elemento_n ([] , _y), do:
  def elemento_n ([x | _y],0), do: x
  def elemento_n ([_y | resto],n), do: elemento_n(resto,n-1)

  @doc "Obtem o tamanho da lista l"
  def tamanho([]), do: 0
  def tamanho(_ | resto), do: 1+ tamanho(resto)

  # Um tipo comum de processamento de lista e' calcular um resultado levando
  # em consideracao todos os elementos da lista, por exemplo a soma ou
  # produto de uma lista de numeros.

  @doc "Calcula a soma dos numeros da lista l."
  def soma_lista([]), do: 0
  def soma_lista([x | resto]), do: x + soma_lista(resto)

  @doc "Calcula o produto dos numeros da lista l."
  def mult_lista([]), do: 1
  def multi_lista([0 | resto]), do: 0
  def mult_lista([x | resto]), do: x * mult_lista(resto)


  # Opcional: escreva uma versao de mult_lista que retorne zero assim que
  # encontrar um elemento 0 na lista, sem precisar ir ate' o fim da lista
  # e efetuar todas as multiplicacoes.

  @doc "Retorna uma string que e' a concatenacao de todas as strings na lista ls."
  def concat_lista([]), do: Enum.reduce(ls, "", fn(string, acumulador) -> acumulador <> string  end)

  @doc "Retorna o maior numero em uma lista de numeros (nil se a lista for vazia)."
  def max_lista([]), do: nil
  def max_lista([x]), do: x
  def max_lista([x | resto ]) do
    max_resto= max_lista(resto)
    if x> max_resto do
      x
    else
      max_resto
    end
  end

  # As vezes podemos querer uma parte dos elementos da lista, sejam
  # os primeiros ou ultimos.

  @doc """
  Retorna os primeiros n elementos da lista l.
  Se l tem n elementos ou menos, retorna a lista inteira.

  Exemplo:
  iex> Ativ3.primeiros_n([1, 2, 3, 4], 2)
  [1, 2]
  """
  def primeiros_n(l, n), do
    if length(l) <= n do
      l
    else
      Enum.take(l, n)
    end
  end

  @doc """
  Retorna os ultimos n elementos da lista l.
  Se l tem n elementos ou menos, retorna a lista inteira.

  Exemplo:
  iex> Ativ3.ultimos_n([1, 2, 3, 4], 2)
  [3, 4]
  """
  def ultimos_n(l, n), do
    if length(l) <= n do
      l
    else
      Enum.take(l, -n)
    end
  end

  # Em algumas situacoes, queremos transformar cada elemento de uma lista da
  # mesma forma, obtendo uma nova lista com os resultados.

  @doc """
  Dada uma lista de numeros, retorna uma nova lista com os numeros da lista
  original, multiplicados por 2.

  Exemplo:
  iex> Ativ3.dobro_lista([1, 2, 3, 4])
  [2, 4, 6, 8]
  """
  def dobro_lista(l), do: Enum.map(l, fn(x) -> x*2 end)

  @doc """
  Dada uma lista de numeros, retorna uma nova lista com os numeros da lista
  original elevados ao quadrado.

  Exemplo:
  iex> Ativ3.quadrado_lista([1, 2, 3, 4])
  [1, 4, 9, 16]
  """
  def quadrado_lista(l), do: Enum.map(l, fn(x) -> x*x end)

  # Uma outra necessidade comum e' selecionar apenas os elementos de uma lista
  # que possuem alguma propriedade, por exemplo apenas os numeros positivos, ou
  # apenas as strings que comecam com uma letra maiuscula.

  @doc """
  Dada uma lista de numeros, retorna uma nova lista com os numeros positivos
  da lista original.

  Exemplo:
  iex> Ativ3.positivos_lista([-2, 2, 0, 88, 15, -11, 42])
  [2, 88, 15, 42]
  """
  def positivos_lista(l), do: Enum.filter(l, fn x -> x > 0 end)

  @doc "Retorna apenas os numeros pares de uma lista de numeros."
  def pares_lista(l), do: Enum.filter(l, fn x -> rem(x, 2) == 0 end)

  # Podemos querer fazer operacoes no agregado, combinando os elementos
  # de mesma posicao em duas listas, gerando uma terceira lista. Por exemplo,
  # somar as listas [1, 2, 3] e [4, 5, 6] elemento a elemento, resultando na
  # lista [5, 7, 9].

  @doc """
  Dadas duas listas de numeros, retorna uma lista com a soma de cada elemento
  de mesma posicao nas duas listas. Se uma das listas for menor que a outra,
  retorna uma lista do tamanho da menor.

  Exemplo:
  iex> Ativ3.soma_listas([1, 2, 3], [7, 8, 9, 3])
  [8, 10, 12]
  """
  def soma_listas(l1, l2), do
    Enum.zip_with([l1, l2], fn[valorLista1, valorLista2] -> valorLista1 + valorLista2 end)
  end

  @doc """
  Dadas duas listas de strings l1 e l2, retorna uma lista em que cada elemento
  e' a concatenacao dos elementos de mesma posicao em l1 e l2.
  Se uma das listas for menor que a outra, retorna uma lista do tamanho da menor.

  Exemplo:
  iex> Ativ3.concat_listas(["a", "b", "c"], ["x", "y", "z"])
  ["ax", "by", "cz"]
  """
  def concat_listas(l1, l2), do
    Enum.zip_with([l1, l2], fn[valorLista1, valorLista2] -> valorLista1 <> valorLista2 end)
  end
  # Algumas outras manipulacoes de listas.

  # Dica: para append, e' possivel resolver apenas fazendo recursao e seguindo
  # a estrutura de uma das listas e pensando qual deve ser a resposta quando essa
  # lista for vazia.

  @doc """
  Junta/concatena duas listas, retornando uma lista com todos os elementos da
  primeira seguidos pelos elementos da segunda.

  Exemplo:
  iex> Ativ3.append([1, 2, 3], [4, 5, 6])
  [1, 2, 3, 4, 5, 6]
  """
  def append(l1, l2), do: l1 ++ l2

  # Dica: para a funcao a seguir, pode ser necessario definir uma funcao auxiliar.

  @doc """
  Retorna uma lista apenas com os elementos de posicao (indice) par na lista l.
  Considere o primeiro elemento como posicao 1 (e nao 0 como seria o indice).

  Exemplo:
  iex> Ativ3.posicoes_pares([2, 4, 6, 8, 10])
  [4, 8]
  """
  def posicoes_pares(l), do: Enum.drop_every(l, 2)

end
