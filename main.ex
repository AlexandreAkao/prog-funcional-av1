defmodule Unifor do

_ = """
1)

a)
O Cálculo Lambda é suficientemente expressivo para permitir a codificação de uma linguagem funcional de alto nível.

Aloritmos para a resolução de problemas computacionais expressos em Cálculo Lambda podem ser facilmente implementados de diferentes formas. 

Uma compreensão de lista é uma construção sintática para criação de uma lista baseada em listas existentes. Ela segue a forma da notação de definição de conjunto matemática (compreensão de conjunto) como forma distinta para uso de funções de mapa e filtro.

exemplo = Enum.filter([1, 2, 3], fn x -> rem(x,2) == 0 end)
pegamos apenas os elementos da lista que são números pares.
exemplo2 = for n <- [1, 2, 3, 4], do: n * n
fazemos uma lista dos valores da lista multiplicados por eles mesmos.

b)
currying é um método de aplicar funções parcialmente para que o resto dos parâmetros possam ser aplicados mais tarde.
Portanto, currying é a capacidade de fornecer apenas um subconjunto dos parâmetros necessários para chamar a função, 
e o resultado é outra função que requer apenas os parâmetros restantes.

mult = fn (x, y) -> x * y end
double = fn x -> mult.(x, 2) end
double.(3)
"""

  def dois(ps, xs) do
    list = for p <- ps, do: for x <- xs, do: 
    if (p |> elem(0)) in Tuple.to_list(x), do: p
    list = List.flatten(list)
    Enum.filter(list, & !is_nil(&1))
  end

  def intercala(lista1, lista2) do
    lista = Enum.zip(lista1, lista2)
    lista3 = for n <- lista, do: Tuple.to_list(n)
    List.flatten(lista3)
  end

  def chunk(_, 0, _), do: []
  def chunk(k, x, [_|lista]), do: [Enum.take_every(lista,k)] ++ chunk(k,x-1,lista)

  def quatro(k, lista) do
    [Enum.take_every(lista,k)] ++ chunk(k,k-1,lista)
  end

  def anagrama(s1, s2) do
    cond do
      String.length(s1) != String.length(s2) -> false
      Enum.sort(String.graphemes(s1)) == Enum.sort(String.graphemes(s2)) -> true
      true -> false
    end
  end

  def map(array, fun) do
     for x <- array do
        fun.(x)
     end
  end

  def filter(array, fun) do
     for x <- array, fun.(x) do
        x
     end
  end
  
end


IO.puts "***questao dois***"
IO.inspect Unifor.dois([{1, 2}, {3, 4}, {5, 6}],[{1, 3}])
IO.puts "***questao tres***"
IO.inspect Unifor.intercala([1,2,3],[4,5,6])
IO.puts "***questao quatro***"
IO.inspect Unifor.quatro(3,[1,2,3,4,5,6,7,8,9,10])

IO.puts "***questao cinco***"
IO.inspect Unifor.anagrama("amar","mara")
IO.inspect Unifor.anagrama("amar","nara")
IO.inspect Unifor.anagrama("pato","topa")
IO.inspect Unifor.anagrama("unifor","roufin")

IO.puts "***fase 2***"
IO.puts "***map***"
IO.inspect Unifor.map([1,2,3,4,5,6], fn(x) -> x*2 end)
IO.puts "***filter***"
IO.inspect Unifor.filter([1,2,3,4,5,6], fn(x) -> rem(x, 2)==0 end)