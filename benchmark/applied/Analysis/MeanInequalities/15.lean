import Mathlib


/-! 1. Variants / complements around AM-GM and Jensen-style results -/
theorem Real.young_inequality_strict
    {a b p q : ℝ} (ha : 0 < a) (hb : 0 < b)
    (hpq : p.HolderConjugate q) (hne : a ^ p ≠ b ^ q) :
    a * b < a ^ p / p + b ^ q / q := by
  sorry
