import 'dart:math';

class GeradorNumeroAleatorioService {
  
  static int gerarNumeroAleatorio(int valorMaximo) {
    Random numeroAleatorio = Random();

    return numeroAleatorio.nextInt(valorMaximo);
  }
}