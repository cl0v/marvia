/// Serão 5 gemas que irão compor o quadro
class Gem {
  /// Qual a gema;
  String gem;

  /// A cor da gema;
  String color;

  /// Formato da gema
  String shape;
  Gem({
    required this.gem,
    required this.color,
    required this.shape,
  });
}

class Quadro {
  /// Lista das 5 gemas que irão ter destaque no quadro
  List<Gem> gemas;
  /// Cor de fundo quadro (Onde as gemas estarão exibidas)
  String background;

  /// Borda do quadro
  String border;

  /// Cor da borda
  String borderColor;
  Quadro({
    required this.gemas,
    required this.background,
    required this.border,
    required this.borderColor,
  });
}
