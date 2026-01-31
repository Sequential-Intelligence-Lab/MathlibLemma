import Mathlib

open Real

lemma gronwallBound_le_add_linear (δ K ε x : ℝ) :
    gronwallBound δ K ε x ≤ |δ| * exp (|K| * |x|) + |ε| * |x| * exp (|K| * |x|) := by
  sorry