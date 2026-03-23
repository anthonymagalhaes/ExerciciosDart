void algoritmo(){
  for (int i = 1000; i <= 9999; i++) {
    int metade1 = i ~/ 100; 
    
    int metade2 = i % 100;  
    
    int soma = metade1 + metade2;
    int quadrado = soma * soma;

    if (quadrado == i) {
      print(i);
    }
  }
}