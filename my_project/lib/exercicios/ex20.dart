import 'dart:io';

List<List<String>> mapa = [
  ['#','#','#','#','#','#','#','#','#'],
  ['#','E',' ',' ','#',' ',' ',' ','#'],
  ['#','#','#',' ','#',' ','#',' ','#'],
  ['#',' ',' ',' ',' ',' ','#',' ','#'],
  ['#',' ','#','#','#',' ','#',' ','#'],
  ['#',' ','#',' ',' ',' ',' ',' ','#'],
  ['#',' ','#',' ','#','#','#','#','#'],
  ['#',' ',' ',' ',' ',' ',' ','S','#'],
  ['#','#','#','#','#','#','#','#','#'],
];

int linha = 1;
int coluna = 1;

void exibir() {
  print('\x1B[2J\x1B[0;0H');
  for (int i = 0; i < mapa.length; i++) {
    String l = '';
    for (int j = 0; j < mapa[i].length; j++) {
      l += (i == linha && j == coluna) ? '@' : mapa[i][j];
    }
    print(l);
  }
}

void main() {
  exibir();
  while (true) {
    stdout.write('Direção (W/A/S/D): ');
    String dir = stdin.readLineSync()!.trim().toLowerCase();
    if (dir.isEmpty) continue;

    int nl = linha, nc = coluna;
    if (dir[0] == 'w') nl--;
    else if (dir[0] == 's') nl++;
    else if (dir[0] == 'a') nc--;
    else if (dir[0] == 'd') nc++;
    else { print('Inválido!'); continue; }

    if (mapa[nl][nc] == '#') { print('Parede!'); continue; }

    bool saida = mapa[nl][nc] == 'S';
    linha = nl;
    coluna = nc;
    exibir();

    if (saida) { print('Você venceu!'); break; }
  }
}