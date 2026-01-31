import Mathlib

lemma gronwallBound_compare_x
    {δ K ε x₁ x₂ : ℝ} (hx : x₁ ≤ x₂)
    (hδ : 0 ≤ δ) (hε : 0 ≤ ε) (hK : 0 ≤ K) :
    gronwallBound δ K ε x₁ ≤ gronwallBound δ K ε x₂ := by
  sorry
