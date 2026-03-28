import 'dart:io';

void main(List<String> arguments) {
  int qtdMasculino = 0;
  int qtdFeminino = 0;

  double somaSalarioLiquidoMasculino = 0;
  double somaSalarioLiquidoFeminino = 0;

  while (true) {
    print("\nDigite o código (ou 9999 para sair):");
    String codigo = stdin.readLineSync()!;

    if (codigo == "9999") {
      break;
    }

    print("Digite o nome:");
    String nome = stdin.readLineSync()!;

    print("Digite o sexo (M ou F):");
    String sexo = stdin.readLineSync()!.toUpperCase();

    print("Digite o número de horas por aula no mês:");
    int horas = int.parse(stdin.readLineSync()!);

    double salarioBruto = horas * 12.30;
    double salarioLiquido = salarioBruto;

    if (sexo == "M") {
      salarioLiquido = salarioBruto * 0.9;
      qtdMasculino++;
      somaSalarioLiquidoMasculino += salarioLiquido;
    }

    if (sexo == "F") {
      salarioLiquido = salarioBruto * 0.95;
      qtdFeminino++;
      somaSalarioLiquidoFeminino += salarioLiquido;
    }

    print("\n--Dados do Professor--");
    print("\nCódigo: $codigo");
    print("Nome: $nome");
    print("Salário Bruto: R\$ ${salarioBruto.toStringAsFixed(2)}");
    print("Salário Líquido: R\$ ${salarioLiquido.toStringAsFixed(2)}");
  }

  double mediaMasculino = 0;
  double mediaFeminino = 0;

  if (qtdMasculino > 0) {
    mediaMasculino = somaSalarioLiquidoMasculino / qtdMasculino;
  }

  if (qtdFeminino > 0) {
    mediaFeminino = somaSalarioLiquidoFeminino / qtdFeminino;
  }

  print("\n--RESULTADOS--");
  print("\nMédia do salários líquido (Masculino): R\$ ${mediaMasculino.toStringAsFixed(2)}");
  print("Média do salários líquido (Feminino): R\$ ${mediaFeminino.toStringAsFixed(2)}");
}