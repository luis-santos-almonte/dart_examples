/// THIS IS THE START
void main() {
  funInterpolation();
  funNullValues();
}

// ====== Section 1: String Interpolation ======

void funInterpolation() {
  String word = 'testing';
  String upperWord = word.toUpperCase();
  print(word + ' ' + upperWord);
}

// ====== Section 2: Null values (Variables/Operators) ======

void funNullValues() {
  int a = null; //This variable only expects int values.
  int? b = null; //This variable expects int or null variables.
  int? c; //This variable is initialized with a default null value.

  print(a);
  b ??= 3;
  print(b);
  b ??= 5;
  print(b);
  print(1 ?? 3); //The left is not a null so 3 is irrelevant.
  print(c ?? 5); //The left CAN be null so the 5 will be used if c is null.
}

    // ====== Section 3: Collections ======