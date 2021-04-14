# Progração Funcional AV1

## Etapa 1

### 1) Programe os seguintes cenários

- a) Em programação funcional, qual a finalidade prática da notação lambda e da compreensão de listas? Dê algum exemplo em Elixir que explore compreensão de listas e lambda em conjunto

- b) Apresente e explique um código que usa a técnica de currying em elixir

### 2) Usando Elixir ou Haskell, defina uma função f(ps,xs) que recebe duas listas ps e xs como parâmetros de f. A primeira lista (ps) possui pares internos do tipo {X, Y}, e a segunda lista (xs) possui elementos pares do tipo {X,X}. Portanto, X e Y são qualquer tipo de dados. Uma chamada à função f, como f(ps, xs), retorna uma lista com os pares de ps cujo primeiro elemento esteja na lista xs

    Exemplo:
    Chamada f(ps, xs), com ps e xs valorados assim: f( [{x1,y1}, {x2,y2}, {x3,y3}], [{x1,x3}] ), nós temos o retorno [{x1,y1}, {x3,y3}], que são respectivamente o par 1 {x1,y1} e o par 3 {x3,y3} da lista ps.
    Ou seja, x1 e x3 estão na lista xs, enquanto x2 não está na lista xs.

### 3) Escreva uma função que receba duas listas e retorne outra lista com os elementos das listas originais intercalados

    Exemplo:
    intercala([1, 2, 3], [4, 5, 6]) = [1, 4, 2, 5, 3, 6]

### 4) Dado um valor k e uma lista de números, imprimir k listas da seguinte forma

    Entrada: f(k, [v1, v2, …, vn])
    Saída com k listas: [lista1, lista2, lista3, …., listak] tal que as listas incluem valores vi não repetidos, e sequenciados como os 3 exemplos seguintes:

| Entradas (f(k, lista))  |  Saídas (lista de listas)  |
| ------------------- | ------------------- |
|  f(3, [1,2,3,4,5,6]) |  → [[1,4],[2,5],[3,6]] |
|  f(2, [1,2,3,4,5,6]) |  → [[1,3,5],[2,4,6]] |
|  f(3, [1,2,3,4,5,6,7,8,9,10]) |  → [[1,4,7,10],[2,5,8],[3,6,9]] |

### 5) Fazer uma função anagrama(s1, s2):Bool que recebe dois parâmetros do tipo string (s1, s2), retornando verdadeiro ou falso de acordo com as seguintes regras

- a) Se s1 e s2 possuem o mesmo tamanho e as mesmas letras, independente da ordem, retornar verdadeiro. Veja exemplos:
  - i) anagrama(“amar”, “mara”) retorna verdadeiro;
  - ii) anagrama(“amar”, “nara”) retorna falso;
  - iii) anagrama(“pato”, “topa”) retorna verdadeiro;
  - iv) anagrama(“unifor”, “roufin”) retorna verdadeiro;

## Etapa 2

As funções filter (filtrar) e map (mapear), em linguagens funcionais são comuns e facilitam bastante nossa programação. Essas funções, na verdade, são pequenos blocos de codificações que seguem técnicas de programação funcional, possíveis de serem implementadas. Nos próximos exercícios, sua atividade é implementar em Elixir as funções e filtrar, para que aceitem funções e listas como argumentos. Deixo aqui um exemplo de uso das funções nativas em Elixir: Enum.filter([1,2,3,4,5,6], fn(x) -> rem(x, 2)==0 end)

[2, 4, 6]

Enum.map([1,2,3,4,5,6], fn(x) -> x*2 end)

[2, 4, 6, 8, 10, 12]

Ou seja, você construirá um módulo, por exemplo Unifor, que dentro dele conterá as funções mapear e filtrar. Não é permitido usar o módulo Enum do Elixir, que já contém tais funções nativas. Sua implementação deve ser pura, usando recursividade ou compreensão de listas. Portanto, não se deve usar recursos do Elixir que já fazem tal funcionalidade.

- Implementar a função mapear.
- Implementar a função filtrar.
