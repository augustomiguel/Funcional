defmodule Ativ7Test do
  use ExUnit.Case
  doctest Ativ7

  test "tamanho de lista" do
    assert Ativ7.tamanho([]) == 0
    assert Ativ7.tamanho([1, 2, 3, 4]) == 4
  end

  test "replica uma string n vezes" do
    assert Ativ7.replica("foo", 0) == ""
    assert Ativ7.replica("", 8) == ""
    assert Ativ7.replica("1234", 3) == "123412341234"
  end

  test "Aplica uma funcao aos elementos de uma lista" do
    assert Ativ7.map([], fn x -> x * x end) == []
    assert Ativ7.map([1, 2, 3, 4], fn x -> x * x end) == [1, 4, 9, 16]
    assert Ativ7.map([:bolo, :cafe, :tapioca], fn x -> x end) == [:bolo, :cafe, :tapioca]
  end
  
  test "calcula a soma de uma lista de numeros" do
    assert Ativ7.soma_lista([]) == 0
    assert Ativ7.soma_lista([1]) == 1
    assert Ativ7.soma_lista([3, 7, 21, 1]) == 32
    assert Ativ7.soma_lista([-2, 0, 2, -11, 0, 11]) == 0
  end

  test "calcula o produto de uma lista de numeros" do
    assert Ativ7.mult_lista([]) == 1
    assert Ativ7.mult_lista([1]) == 1
    assert Ativ7.mult_lista([3, 4, 5]) == 60
    assert Ativ7.mult_lista([3, 7, 21, 1]) == 441
    assert Ativ7.mult_lista([-2, 0, 2, -11, 0, 11]) == 0
    assert Ativ7.mult_lista([-2, 2, -11, 11]) == 484
  end

  test "concatena todas as strings em uma lista" do
    assert Ativ7.concat_lista([]) == ""
    assert Ativ7.concat_lista(["a", "", "xyz"]) == "axyz"
    assert Ativ7.concat_lista(["", ""]) == ""
    assert Ativ7.concat_lista(["abc", "def", "xyz"]) == "abcdefxyz"
  end

  test "filtra os elementos de uma lista de acordo com predicado" do
    assert Ativ7.filter([], fn x -> x > 0 end) == []
    assert Ativ7.filter([1, 2, 3, 4, 5], fn x -> x > 1000 end) == []
    assert Ativ7.filter([1, 2, 3, 4, 5], fn x -> x > 0 end) == [1, 2, 3, 4, 5]
    assert Ativ7.filter(["x", "foo", "tapioca"], fn s -> String.length(s) > 3 end) ==
      ["tapioca"]
  end  
end
