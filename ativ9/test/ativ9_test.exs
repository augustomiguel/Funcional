defmodule Ativ9Test do
  use ExUnit.Case
  doctest Ativ9

  test "faz uma compra com estoque suficiente" do
    serv_pid = Ativ9.start(20, 30)
    { c_cafe, c_cha, r_cafe, r_cha } = Cliente.compra(serv_pid, 10, 12)
    assert c_cafe === 10
    assert c_cha  === 12
    assert r_cafe === 10
    assert r_cha  === 18
  end

  test "compra sem estoque suficiente de café" do
    serv_pid = Ativ9.start(10, 20)
    { c_cafe, c_cha, r_cafe, r_cha } = Cliente.compra(serv_pid, 15, 12)
    assert c_cafe === 10
    assert c_cha  === 12
    assert r_cafe === 0
    assert r_cha  === 8
  end

  test "compra sem estoque suficiente de chá" do
    serv_pid = Ativ9.start(20, 8)
    { c_cafe, c_cha, r_cafe, r_cha } = Cliente.compra(serv_pid, 15, 18)
    assert c_cafe === 15
    assert c_cha  === 8
    assert r_cafe === 5
    assert r_cha  === 0
  end
end
