/**17) Faça um algoritmo utilizando procedimento ou funções que leia dois vetores, gere e
imprima um terceiro vetor que seja a soma dos dois vetores lidos e imprima também a
soma de todos os elementos deste 3o vetor. */

void main(List<String> arguments) 
  {
    List vetor1 = [1,3,5,7,9];
    List vetor2 = [2,4,6,8,10];

    List vetor3 = [];

    int somaTodosValores = 0;

    for (int i = 0; i <= vetor1.length - 1; i++) 
    {
        int v3Numero;

        v3Numero = vetor1[i] + vetor2[i];
        vetor3.add(v3Numero);

        somaTodosValores += v3Numero;
    }

    print("Vetor 1 = ${vetor1}\nVetor 2 = ${vetor2}");
    print("Vetor 3 = ${vetor3}\nSoma de todos os valores do Vetor 3 = ${somaTodosValores}");
  }
