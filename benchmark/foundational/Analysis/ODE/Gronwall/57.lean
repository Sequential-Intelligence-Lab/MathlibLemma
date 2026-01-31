import Mathlib

lemma gronwallBound_nonexpansive_in_ε
    {δ K ε₁ ε₂ x : ℝ} :
    |gronwallBound δ K ε₁ x - gronwallBound δ K ε₂ x| ≤
      |ε₁ - ε₂| * |x| * Real.exp (|K| * |x|) := by
  sorry