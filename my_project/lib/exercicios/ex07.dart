import 'dart:math';

void main(List<String> arguments){
    print(calculaValorDaSerie(5, 2));
}

double calculaValorDaSerie(int termo, int valor){
    int divisor = 1;
    int exp = 2;
    bool indo = true;

    double valorTotal = 0;

    int contador = 1;
    while (contador <= termo){
        valorTotal += (pow(valor, exp) / calculaFatorial(divisor));
        
        if (divisor == 4){
            indo = false;
        }else if (divisor == 1){
            indo = true;
        }

        if (indo){
            divisor++;
        }else{
            divisor--;
        }
        exp++;
        contador++;
    }

    return valorTotal;
}

int calculaFatorial(int valor){
    int total = 1;
    for (int i = 1; i <= valor; i++){
        total *= i;
    }
    return total;
}