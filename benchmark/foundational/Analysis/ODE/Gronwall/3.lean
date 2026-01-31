import Mathlib

lemma gronwallBound_mono_in_x_of_nonnegK {δ K ε x₁ x₂ : ℝ} (hK : 0 ≤ K) (hx : x₁ ≤ x₂)
    (hδ : 0 ≤ δ) (hε : 0 ≤ ε) :
    gronwallBound δ K ε x₁ ≤ gronwallBound δ K ε x₂ := by
  sorry
