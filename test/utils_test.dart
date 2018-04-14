import 'package:test/test.dart';
import 'package:unhexennium/utils.dart';

enum Foo { bar, spam }

void main() {
  test("enumToString shows the right hand side of an enum toString()", () {
    expect(enumToString(Foo.bar), "bar");
    expect(enumToString(Foo.spam), "spam");
  });

  test("toStringAsSubscript", () {
    expect(asSubscript("-42"), "₋₄₂");
  });

  test("toStringAsSubscript", () {
    expect(asSuperscript("-42"), "⁻⁴²");
  });

  test("toStringAsCharge", () {
    expect(toStringAsCharge(1, omitOne: false), "1+");
    expect(toStringAsCharge(1, omitOne: true), "+");
    expect(toStringAsCharge(-1, omitOne: false), "1-");
    expect(toStringAsCharge(-1, omitOne: true), "-");

    expect(toStringAsCharge(0), "");
  });
}
