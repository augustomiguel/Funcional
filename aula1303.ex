# mapas
# %{}
# %{c => v , ...}
# %{"texto" => z}
# %{:cidade 1=> "Joao Pessoa"}
# %{cidade: "Joao Pessoa"}
# h Map.get

# n1= %{cidade: "JP", estado: "PB"}
# Map.get(n1 , :cidade)
# Map.put(n1, :pais ,"BR")
# %{cidade: c} = n1

defmodule Aula1303 do
  def klist_mapa([]), do: %{}
  def klist_mapa([{x , y} | resto]) do
    klist_mapa(resto)
    |>Map.put( x , y )
    # mapa_resto = Klist_mapa(resto)
    # Map.put(mapa_resto, x, y )
  end
end
