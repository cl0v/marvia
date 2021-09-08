import 'dart:io';
// final f = File('assets/json/dogs.json');
// await f.writeAsString(jsonEncode(result));





//TODO: Basicamente tenho que pegar O que exibe do capitulo 1 ao 2 e salvar
//TODO: Futuramente trocar o final do livro, ja que nao termina em nenhum cap

class BookCropperService {
  Future<String> readBookAsGiantString() async {
    final f = File('assets/txt/Pride-and-Prejudice.txt');
    final r = await f.readAsString();
    // final m = r.
    print(r);
    return r;
  }

  String cutBetween(
    str,
    start,
    end,
  ) {
    //Teoricamente ele pega o primeiro exemplar de cada....
    final startIndex = str.indexOf(start);
    final endIndex = str.indexOf(end, startIndex + start.length);
    String result = str.substring(startIndex + start.length, endIndex);
    print(result.split(" ").length);
    return result;
    //TODO: Pode dar bum quando aparece duas vezes no codigo
  }
}
