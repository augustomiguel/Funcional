# Atividade 9

Projeto para a Atividade 9 da disciplina Programação Funcional do
semestre 2023.2.

Esta atividade é sobre processos em Elixir usando as primitivas
básicas da plataforma (spawn, send e receive). Para resolver a
atividade, é preciso implementar a função loop no módulo Ativ9
para responder mensagens enviadas de outros processos; veja os
comentários no módulo para maiores detalhes.

O módulo Cliente implementa um cliente para o servidor do
módulo Ativ9, realizando compras de café e chá e retornando
os resultados (função compra_terminal), ou mostrando os passos
e resultados na tela (funçao compra).

Os testes usam a funçao Cliente.compra. Para acompanhar os
passos e resultados no IEx, é possível iniciar um servidor
com a função Ativ9.start, passando os estoques iniciais
de café e chá, por exemplo:

```
> pid = Ativ9.start(10, 10)
```

E em seguida executar a função Cliente.compra_terminal passando
o pid do servidor criado:


```
> Cliente.compra_terminal(pid)
```

Note que se os testes forem executados (usando `mix test`, por exemplo)
sem que a função Ativ9.loop tenha sido implementada, o programa ficará
parado e terá que ser interrompido usando Ctrl+C duas vezes. 
