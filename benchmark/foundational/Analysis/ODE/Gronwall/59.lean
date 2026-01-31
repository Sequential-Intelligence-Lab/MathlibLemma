import Mathlib

lemma gronwallBound_compare_K
    {δ K₁ K₂ ε x : ℝ} (hK : 0 ≤ K₁) (hK₂ : K₁ ≤ K₂) (hδ : 0 ≤ δ) (hε : 0 ≤ ε) (hx : 0 ≤ x) :
    gronwallBound δ K₁ ε x ≤ gronwallBound δ K₂ ε x := by
  sorry
