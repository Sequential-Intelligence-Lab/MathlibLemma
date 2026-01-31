import Mathlib


/-! 1. Variants / complements around AM-GM and Jensen-style results -/
theorem Real.young_inequality_eq_iff
    {a b p q : ℝ} (ha : 0 ≤ a) (hb : 0 ≤ b)
    (hpq : p.HolderConjugate q) :
    a * b = a ^ p / p + b ^ q / q ↔
      a ^ p = b ^ q := by
  sorry
