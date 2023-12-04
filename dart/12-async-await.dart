// Futures son parecidos alas promesas en JS

void main () async {
  try {
    print('Inicio del programa');
    
    final value = await httpGet('www.google.com');
    print(value);
  } catch (err) {
    print('Ups! $err');
  }
  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  throw 'Error in Http Get Response';
//   return 'Http Get Response Success!';
}