defmodule Aula1103 do
  @defaults [alin: :esq, largura: 20]
  def format_coluna(texto, opcoes \\ []) do
    opcoes = Keyword.merge(@defaults, opcoes)
    formatar(opcoes[:alin], opcoes[:largura], texto,String.lengh(texto) )
  end
  defp formatar(:esq , largura , texto, tam ) do
    texto <> String.duplicate(" ", max(0, largura - tam) )
  end
  defp formatar(:dir , largura , texto, tam  ) do
    String.duplicate(" ", max(0, largura - tam)) <> texto
  end
  defp formatar(:centro , largura , texto, tam  ) do
    espacos = max( 0 , largura - tam )
    esp_esq = div(max( 0,largura-tam) , 2)
    esp_dir = espacos - esp_esq
    String.duplicate(" ", esp_esq) <> texto <> String.duplicate(" " , esp_dir)
  end
end
# trunc()       arredonda pra cima
# ceil()       arredonda pra baixo
# String.duplicate(" ",n)
#retornar uma string com n espaços
