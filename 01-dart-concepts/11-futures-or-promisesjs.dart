// Futures son parecidos alas promesas en JS

void main () {
  print('Inicio del programa');
  
  httpGet('www.google.com')
    .then((value) {
      print(value);
    })
    .catchError((error) {
      print('Error $error');
    });
  
  print('Fin del programa');
}

Future<String> httpGet(String url) {
  return Future.delayed(const Duration(seconds: 1), () {
//     return 'Http Get Response Success';
    throw 'Error in Http Get Request!';
  });
}