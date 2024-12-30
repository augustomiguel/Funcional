defmodule Ativ2 do
  @moduledoc """
  Atividade 2 da disciplina Programação Funcional - 2023.2
  """

  # Exercícios com funções simples

  # Escreva o corpo das funções abaixo, seguindo o comportamento
  # especificado pela documentação. Para exemplos de cada
  # função, consulte o arquivo ativ2_test.exs no diretorio 'test'

    @doc "Multiplica o numero passado como parametro por 5."
    def mult5(x) do
      x*5
    end

    @doc "Calcula o quadrado do numero x"
    def quadrado(x) do
      x*x
    end

    @doc "Calcula a soma dos quadrados de x e y: x ao quadrado + y ao quadrado."
    def soma_quadrados(x, y) do
      quadrado(x) + quadrado(y)
    end

    @doc "Concatena as duas strings a e b."
    def concat(a, b) do
      a<>b
    end

    @doc "Efetua a negacao logica (NOT) do booleano a."
    def negacao(a) do
      NOT a
    end

    @doc "Efetua o E-logico (AND) dos dois booleanos a e b."
    def e_logico(a, b) do
      a && b
    end

    @doc """
    Centraliza a string str em um campo de tamanho largura,
    adicionando espacos antes e depois da string, dependendo
    do tamanho. Se não for possível dividir os espaços
    igualmente, colocar um espaço a mais do lado esquerdo
    (antes da string). Assuma que a largura sempre é maior
    que o tamanho da string.

    iex> Ativ2.centraliza("teste", 13)
    "    teste    "
    iex> Ativ2.centraliza("teste", 12)
    "    teste   "
    """
    def centraliza(str, largura) do
      qtd = (largura - String.length(str))/2
      vazio  = ""

      coud do
        rem(qtd,2) = 0 -> qtd * vazio <> str <> qtd * vazio
        rem(qtd,2) = true -> qtd * vazio <> str <> (qtd-1) * vazio
      end

    end
    # Dica: olhe a documentação para String.duplicate
    # A função Integer.floor_div também pode ser útil
end
