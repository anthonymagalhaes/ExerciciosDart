/**
 * 16) Construa um algoritmo para ler o tamanho e os elementos de 4 vetores e responda os
seguintes itens:
a) Gere um quinto vetor com os valores dos outros vetores de forma ordenada.
b) Gere um vetor só com os elementos que tenham intercessão com os 4 vetores.
 */

void main(List<String> arguments) 
  {
    List vetor1 = [ 20, 30, 60, 2];
    List vetor2 = [ 900, 3900, 60, 2];
    List vetor3 = [ 250, 302, 60, 2];
    List vetor4 = [ 34520, 380, 60, 2];
    List vetor5 = [ ];
    List vetor6 = [ ];

    vetor5.addAll(vetor1);
    vetor5.addAll(vetor2);
    vetor5.addAll(vetor3);
    vetor5.addAll(vetor4);
    vetor5.sort();

    for (int n in vetor1)
    {
      if ( vetor2.contains(n) && vetor3.contains(n) && vetor4.contains(n))
      {
         vetor6.add(n);
      }
    }

    
    print("5º vetor com todos os valores do vetor 1 , 2 , 3 e 4 - ${vetor5}");
    
    print("6º vetor só com os elementos que tenham intercessão com os 4 vetores - ${vetor6}");
  }