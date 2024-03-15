import 'dart:io';

abstract class Currency {
  num amount;
  num value;

  Currency(this.amount, this.value);

  num toTzs();
  num toKsh();
  num toUgx();
  num toCny();
  num toDollar();
}

class Dollar extends Currency {
  Dollar(num amount, num value) : super(amount, value);

  @override
  num toTzs() {
    return amount * value;
  }

  @override
  num toKsh() {
    return amount * value;
  }

  @override
  num toUgx() {
    return amount * value;
  }

  @override
  num toCny() {
    return amount * value;
  }

  @override
  num toDollar() {
    return amount;
  }
}


void main()
{
  try
  {
    while (true)
    {
      Map <String, num> oneDollar = {'ksh': 135.00, 'dollar': 1, 'tzs': 2551.00, 'cyn': 7.19, 'ugx': 3886.26};
      Map <String, num> oneTzs = {'ksh': 0.053, 'dollar': 0.00039, 'tzs': 1, 'cyn': 7.19, 'ugx': 3886.26};
      Map <String, num> oneKsh = {'ksh': 1, 'dollar': 0.0074, 'tzs': 18.97, 'cyn': 7.19, 'ugx': 3886.26};
      print('Choose source currency: ');
      print('1. Dollar');
      print('2. Tzs');
      print('3. Ksh');
      print('');
      String src = stdin.readLineSync()!;
      int i = int.parse(src);
      switch(i)
      {
        case 1:
        print('Choose destination currency: ');
        print('1. Dollar');
        print('2. Tzs');
        print('3. Ksh');
        print('');
        String dest = stdin.readLineSync()!;
        int j = int.parse(dest);
        switch(j)
        {
          case 1:
          final value = oneDollar['dollar'];
          print('Enter Amount USD: ');
          String amo = stdin.readLineSync()!;
          num amount = double.parse(amo); 
          Dollar obj = new Dollar(amount, value!);
          num k = obj.toDollar();
          print('Amount in USD is ${k}');
          break;
          case 2:
          final value = oneDollar['tzs'];
          print('Enter Amount USD: ');
          String amo = stdin.readLineSync()!;
          num amount = double.parse(amo); 
          Dollar obj = new Dollar(amount, value!);
          num k = obj.toTzs();
          print('Amount in TZS is ${k}');
          break;
          case 2:
          final value = oneDollar['ksh'];
          print('Enter Amount USD: ');
          String amo = stdin.readLineSync()!;
          num amount = double.parse(amo); 
          Dollar obj = new Dollar(amount, value!);
          num k = obj.toKsh();
          print('Amount in KSH is ${k}');
          break;
        }
        break;
        case 2:
        print('Choose destination currency: ');
        print('1. Dollar');
        print('2. Tzs');
        print('3. Ksh');
        print('');
        String dest = stdin.readLineSync()!;
        int j = int.parse(dest);
        switch(j)
        {
          case 1:
          final value = oneTzs['dollar'];
          print('Enter Amount TZS: ');
          String amo = stdin.readLineSync()!;
          num amount = double.parse(amo); 
          Dollar obj = new Dollar(amount, value!);
          num k = obj.toDollar();
          print('Amount in USD is ${k}');
          break;
          case 2:
          final value = oneTzs['tzs'];
          print('Enter Amount TZS: ');
          String amo = stdin.readLineSync()!;
          num amount = double.parse(amo); 
          Dollar obj = new Dollar(amount, value!);
          num k = obj.toTzs();
          print('Amount in TZS is ${k}');
          break;
          case 2:
          final value = oneTzs['ksh'];
          print('Enter Amount TZS: ');
          String amo = stdin.readLineSync()!;
          num amount = double.parse(amo); 
          Dollar obj = new Dollar(amount, value!);
          num k = obj.toKsh();
          print('Amount in KSH is ${k}');
          break;
        }
        break;
        case 3:
        print('Choose destination currency: ');
        print('1. Dollar');
        print('2. Tzs');
        print('3. Ksh');
        print('');
        String dest = stdin.readLineSync()!;
        int j = int.parse(dest);
        switch(j)
        {
          case 1:
          final value = oneKsh['dollar'];
          print('Enter Amount KSH: ');
          String amo = stdin.readLineSync()!;
          num amount = double.parse(amo); 
          Dollar obj = new Dollar(amount, value!);
          num k = obj.toDollar();
          print('Amount in USD is ${k}');
          break;
          case 2:
          final value = oneKsh['tzs'];
          print('Enter Amount KSH: ');
          String amo = stdin.readLineSync()!;
          num amount = double.parse(amo); 
          Dollar obj = new Dollar(amount, value!);
          num k = obj.toTzs();
          print('Amount in TZS is ${k}');
          print('');
          break;
          case 2:
          final value = oneKsh['ksh'];
          print('Enter Amount KSH: ');
          String amo = stdin.readLineSync()!;
          num amount = double.parse(amo); 
          Dollar obj = new Dollar(amount, value!);
          num k = obj.toKsh();
          print('Amount in KSH is ${k}');
          break;
        }
        break;
      }
    }
  }
  catch (EOF)
  {
    print('Welcome Again');
  }
}