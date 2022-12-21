add_one(x) {
    var result;  /* inferred-type variable result */
    var result2; /* inferred-type variable result #2 */

    result = x + 1;
    result2 = x + 1.5;
    print('result2 = ${result2}');
    result = result2;
    return result;
}

void main() {
   print(add_one(6));
}
