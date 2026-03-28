import 'dart:io';

void main(List<String> arguments) {
  int qtdMasculino = 0;
  int qtdFeminino = 0;

  int somaIdadeHomensExperiencia = 0;
  int qtdHomensExperiencia = 0;

  int homensMais45 = 0;

  int mulheresMenos30Experiencia = 0;

  String nomeMulherMaisNovaExperiencia = "";
  int menorIdadeMulherExperiencia = 9999;

  while (true) {
    print("\nDigite o nome (FIM para sair):");
    String nome = stdin.readLineSync()!;
    if (nome.toUpperCase() == "FIM") {
        break;
    }

    print("Digite o sexo (M ou F):");
    String sexo = stdin.readLineSync()!.toUpperCase();

    print("Digite a idade:");
    int idade = int.parse(stdin.readLineSync()!);

    print("Tem experiência no serviço? (S ou N):");
    String experiencia = stdin.readLineSync()!.toUpperCase();

    if (sexo == "M") {
      qtdMasculino++;

      if (experiencia == "S") {
        somaIdadeHomensExperiencia += idade;
        qtdHomensExperiencia++;
      }

      if (idade > 45) {
        homensMais45++;
      }
    }

    if (sexo == "F") {
      qtdFeminino++;

      if (idade < 30 && experiencia == "S") {
        mulheresMenos30Experiencia++;
      }

      if (experiencia == "S" && idade < menorIdadeMulherExperiencia) {
        menorIdadeMulherExperiencia = idade;
        nomeMulherMaisNovaExperiencia = nome;
      }
    }
  }

  double mediaIdadeHomensExperiencia = 0;
  double porcentagemHomensMais45 = 0;

  if (qtdHomensExperiencia > 0) {
    mediaIdadeHomensExperiencia =
        somaIdadeHomensExperiencia / qtdHomensExperiencia;
  }

  if (qtdMasculino > 0) {
    porcentagemHomensMais45 = (homensMais45 / qtdMasculino) * 100;
  }

  print("\n--RESULTADOS--");
  print("\nNúmero de candidatos do sexo masculino: $qtdMasculino");
  print("Número de candidatos do sexo feminino: $qtdFeminino");
  print("Idade média dos homens com experiência: ${mediaIdadeHomensExperiencia.toStringAsFixed(2)}");
  print("Porcentagem de homens com mais de 45 anos: ${porcentagemHomensMais45.toStringAsFixed(2)}%");
  print("Número de mulheres com menos de 30 anos e com experiência: $mulheresMenos30Experiencia");
  print("Nome da candidata com menor idade e com experiência: $nomeMulherMaisNovaExperiencia");
}