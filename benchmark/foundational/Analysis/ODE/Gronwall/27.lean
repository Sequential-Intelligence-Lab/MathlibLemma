import Mathlib

lemma gronwallBound_le_linear_exp (δ K ε x : ℝ) :
    gronwallBound δ K ε x ≤ (|δ| + |ε| * |x|) * Real.exp (|K| * |x|) := by
  sorry