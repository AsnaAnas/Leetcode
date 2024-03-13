int romanToInt(String roman) {
  final symbolValues = {
    'I': 1,
    'V': 5,
    'X': 10,
    'L': 50,
    'C': 100,
    'D': 500,
    'M': 1000,
  };

  int result = 0;
  for (int i = roman.length - 1; i >= 0; i--) {
    int value = symbolValues[roman[i]]!;
    if (i < roman.length - 1 && value < symbolValues[roman[i + 1]]!) {
      result -= value; // Handle subtractive notation (IX, XL, etc.)
    } else {
      result += value;
    }
  }
  return result;
}