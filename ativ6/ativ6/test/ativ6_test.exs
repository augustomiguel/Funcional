defmodule Ativ6Test do
  use ExUnit.Case

  @texto """
  Capítulo III - Genealogia

  Mas, já que falei nos meus dois tios, deixem-me fazer aqui um curto
  esboço genealógico.

  O fundador da minha família foi um certo Damião Cubas, que
  floresceu na primeira metade do século XVIII. Era tanoeiro de ofício,
  natural do Rio de Janeiro, onde teria morrido na penúria e na
  obscuridade, se somente exercesse a tanoaria. Mas não; fez-se
  lavrador, plantou, colheu, permutou o seu produto por boas e
  honradas patacas, até que morreu, deixando grosso cabedal a um
  filho, licenciado Luís Cubas. Neste rapaz é que verdadeiramente
  começa a série de meus avós — dos avós que a minha família sempre
  confessou, — porque o Damião Cubas era afinal de contas um
  tanoeiro, e talvez mau tanoeiro, ao passo que o Luís Cubas estudou
  em Coimbra, primou no Estado, e foi um dos amigos particulares do
  vice-rei Conde da Cunha.

  Como este apelido de Cubas lhe cheirasse excessivamente a tanoaria,
  alegava meu pai, bisneto de Damião, que o dito apelido fora dado a
  um cavaleiro, herói nas jornadas da África, em prêmio da façanha
  que praticou, arrebatando trezentas cubas aos mouros. Meu pai era
  homem de imaginação; escapou à tanoaria nas asas de um
  calembour. Era um bom caráter, meu pai, varão digno e leal como
  poucos. Tinha, é verdade, uns fumos de pacholice; mas quem não é
  um pouco pachola nesse mundo? Releva notar que ele não recorreu à
  inventiva senão depois de experimentar a falsificação;
  primeiramente, entroncou-se na família daquele meu famoso
  homônimo, o capitão-mor, Brás Cubas, que fundou a vila de São
  Vicente, onde morreu em 1592, e por esse motivo é que me deu o
  nome de Brás. Opôs-se-lhe, porém, a família do capitão-mor, e foi
  então que ele imaginou as trezentas cubas mouriscas.

  Vivem ainda alguns membros de minha família, minha sobrinha
  Venância, por exemplo, o lírio do vale, que é a flor das damas do seu
  tempo; vive o pai, o Cotrim, um sujeito que... Mas não antecipemos
  os sucessos; acabemos de uma vez com o nosso emplasto.
  
  Machado de Assis, Memórias Póstumas de Brás Cubas, Capítulo III
  """

  @resultado %{ "particulares" => 1, "filho" => 1, "capítulo" => 2, "genealógico" => 1,
                "avós" => 2, "tanoaria" => 3, "rapaz" => 1, "porém" => 1, "da" => 4,
                "plantou" => 1, "era" => 4, "penúria" => 1, "afinal" => 1, "ao" => 1,
                "notar" => 1, "morreu" => 2, "bom" => 1, "um" => 10, "neste" => 1,
                "até" => 1, "áfrica" => 1, "pouco" => 1, "opôs-se-lhe" => 1, "grosso" => 1,
                "lírio" => 1, "obscuridade" => 1, "imaginou" => 1, "imaginação;" => 1,
                "sempre" => 1, "metade" => 1, "que" => 13, "talvez" => 1, "alguns" => 1,
                "póstumas" => 1, "floresceu" => 1, "deu" => 1, "flor" => 1,
                "verdadeiramente" => 1, "emplasto" => 1, "série" => 1, "dos" => 2,
                "estado" => 1, "venância" => 1, "esse" => 1, "contas" => 1, "pai" => 4,
                "releva" => 1, "foi" => 3, "jornadas" => 1, "herói" => 1, "e" => 7,
                "não;" => 1, "patacas" => 1, "colheu" => 1, "mouros" => 1, "seu" => 2,
                "tios" => 1, "caráter" => 1, "conde" => 1, "arrebatando" => 1, "exercesse" => 1,
                "dado" => 1, "depois" => 1, "amigos" => 1, "sobrinha" => 1, "ainda" => 1,
                "pachola" => 1, "passo" => 1, "morrido" => 1, "produto" => 1, "século" => 1,
                "das" => 1, "primeiramente" => 1, "somente" => 1, "no" => 1, "vivem" => 1,
                "coimbra" => 1, "nos" => 1, "homem" => 1, "primou" => 1, "calembour" => 1,
                "dois" => 1, "as" => 1, "rio" => 1, "teria" => 1, "varão" => 1,
                "luís" => 2, "uma" => 1, "entroncou-se" => 1, "xviii" => 1, "a" => 10,
                "meus" => 2, "machado" => 1, "leal" => 1, "iii" => 2, "deixem-me" => 1,
                "membros" => 1, "homônimo" => 1, "escapou" => 1, "fazer" => 1, "que.." => 1,
                "fundador" => 1, "onde" => 2, "fundou" => 1, "falei" => 1, "asas" => 1,
                "uns" => 1, "nome" => 1, "cheirasse" => 1, "este" => 1, "então" => 1,
                "—" => 2, "-" => 1, "cunha" => 1, "sujeito" => 1, "1592" => 1,
                "dito" => 1, "genealogia" => 1, "tempo;" => 1, "o" => 11, "estudou" => 1,
                "com" => 1, "damas" => 1, "do" => 6, "recorreu" => 1, "damião" => 3,
                "experimentar" => 1, "antecipemos" => 1, "certo" => 1, "capitão-mor" => 2,
                "licenciado" => 1, "façanha" => 1, "em" => 3, "natural" => 1, "alegava" => 1,
                "fez-se" => 1, "curto" => 1, "vale" => 1, "por" => 3, "fumos" => 1,
                "são" => 1, "vice-rei" => 1, "famoso" => 1, "poucos" => 1, "vez" => 1,
                "vive" => 1, "como" => 2, "apelido" => 2, "mundo" => 1, "à" => 2,
                "fora" => 1, "é" => 5, "cubas" => 9, "deixando" => 1, "começa" => 1,
                "lavrador" => 1, "verdade" => 1, "janeiro" => 1, "falsificação;" => 1, "me" => 1,
                "senão" => 1, "esboço" => 1, "os" => 1, "aqui" => 1, "nosso" => 1,
                "minha" => 4, "trezentas" => 2, "bisneto" => 1, "nas" => 2, "excessivamente" => 1,
                "prêmio" => 1, "inventiva" => 1, "mas" => 4, "daquele" => 1, "cavaleiro" => 1,
                "acabemos" => 1, "primeira" => 1, "quem" => 1, "permutou" => 1, "ofício" => 1,
                "nesse" => 1, "vila" => 1, "confessou" => 1, "cabedal" => 1, "meu" => 4,
                "mau" => 1, "sucessos;" => 1, "porque" => 1, "digno" => 1, "honradas" => 1,
                "não" => 3, "já" => 1, "brás" => 3, "de" => 16, "praticou" => 1,
                "memórias" => 1, "mouriscas" => 1, "pacholice;" => 1, "ele" => 2, "lhe" => 1,
                "assis" => 1, "motivo" => 1, "vicente" => 1, "aos" => 1, "tinha" => 1,
                "família" => 5, "boas" => 1, "cotrim" => 1, "se" => 1, "exemplo" => 1,
                "na" => 4, "tanoeiro" => 3 }

  test "Divisão de string em palavras" do
    assert Ativ6.palavras("o rato roeu a roupa do rei de roma") ==
      ~w{o rato roeu a roupa do rei de roma}
    assert Ativ6.palavras("O gato pulou o muro, \n\t mas o muro não morreu.") ==
      ["O", "gato", "pulou", "o", "muro,", "mas", "o", "muro", "não", "morreu."]
  end

  test "Frequencia de palavras" do
    assert Ativ6.freq_palavras(@texto) == @resultado
  end

  test "Lista de palavras mais frequentes" do
    assert Ativ6.palavras_mais_frequentes(@texto) |> Enum.take(15) ==
      [{"de", 16}, {"que", 13}, {"o", 11}, {"a", 10}, {"um", 10}, {"cubas", 9},
       {"e", 7}, {"do", 6}, {"família", 5}, {"é", 5}, {"na", 4}, {"meu", 4},
       {"mas", 4}, {"minha", 4}, {"pai", 4}]
  end

  test "Frequencia de palavras ignorando maiúsculas/minúsculas" do
    texto = "Buffalo buffalo Buffalo bUffAlO buffalo buffalo Buffalo buFFaLo"
    assert Ativ6.freq_palavras(texto, ignora_cx_alta: false) ==
      %{"Buffalo" => 3, "bUffAlO" => 1, "buFFaLo" => 1, "buffalo" => 3}
  end

  test "Frequencia com outras opções de pontuação" do
    texto = "Não pensava ainda; era certo que isso viria depois."
    assert Ativ6.freq_palavras(texto, pontuacao: [".", ";"]) ==
      %{ "ainda" => 1, "certo" => 1, "depois" => 1, "era" => 1, "isso" => 1,
         "não" => 1, "pensava" => 1, "que" => 1, "viria" => 1 }
  end
end
