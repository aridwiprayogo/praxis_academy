void main() {
  //Set from list
  Set awarna = new Set.from(["Red", "Blue", "Gree"]);
  Set bwarna = new Set.from(["Black", "Red", "Blue"]);

  Set abwarna = bwarna.intersection(awarna); //interception => menggabungkan
  for (String warna in abwarna) {
    print(warna);
  }

  //Empty set number
  Set numberSet = new Set();
  numberSet.add(100);
  numberSet.add(44);
  numberSet.add(77);
  numberSet.add(99);
  print(numberSet);

  //Empty set String
  Set haloBandung = new Set();
  haloBandung.add('halooo..');
  haloBandung.add('halo bandung..');
  haloBandung.add('ibu kota');
  haloBandung.add('periangaaann..');
  haloBandung.add('haalooo..');
  haloBandung.add('haalo bandung..');
  haloBandung.add('kota kengan kenangaan..');
  print(haloBandung);
}
