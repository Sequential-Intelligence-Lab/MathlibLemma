import Mathlib

lemma Int.gcd_mul_self_left (a b : ℤ) :
    Int.gcd (a * b) a = |a| := by
  -- Use the standard lemma about gcd of multiples on the left,
  -- specialized with the third argument = 1.
  -- It states: Int.gcd (a * b) (a * 1) = |a| * Int.gcd b 1.
  -- After simplifying `a * 1` to `a` and `Int.gcd b 1` to `1`,
  -- we obtain the desired equality.
  simpa using (Int.gcd_mul_left a b 1)