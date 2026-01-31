import Mathlib

lemma gronwallBound_nonexpansive_in_δ
    {δ₁ δ₂ K ε x : ℝ} :
    |gronwallBound δ₁ K ε x - gronwallBound δ₂ K ε x|
      ≤ |δ₁ - δ₂| * Real.exp (|K| * |x|) := by
  sorry