In Objective-C, a subtle error can arise when dealing with `NSDecimalNumber` and its comparison methods.  Using `compare:` directly with `NSDecimalNumber` objects obtained from different sources (e.g., parsed from strings versus calculated from doubles) can lead to unexpected results due to potential differences in internal representation, even if the decimal values appear identical. This often manifests as seemingly random comparison failures where logically equal values are deemed unequal.  For example:

```objectivec
NSDecimalNumber *num1 = [NSDecimalNumber decimalNumberWithString:@