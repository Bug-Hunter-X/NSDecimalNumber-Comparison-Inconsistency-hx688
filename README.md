# NSDecimalNumber Comparison Inconsistency in Objective-C

This repository demonstrates a subtle bug related to comparing `NSDecimalNumber` objects in Objective-C.  When `NSDecimalNumber` objects are created using different methods (e.g., `decimalNumberWithString:` vs. calculations involving doubles), direct comparison using `compare:` may yield unexpected results, even if the represented decimal values are mathematically equal. This is due to potential differences in the internal representation of the numbers.

The `bug.m` file shows the problematic code, while `bugSolution.m` provides a corrected version that uses `isEqualToNumber:` for reliable comparisons.

**How to reproduce:**

1. Clone this repository.
2. Compile and run `bug.m`. Observe the incorrect comparison output.
3. Compile and run `bugSolution.m`. Observe the correct comparison output.

This issue highlights the importance of consistent number creation and comparison methods when working with `NSDecimalNumber` to avoid unexpected behavior.