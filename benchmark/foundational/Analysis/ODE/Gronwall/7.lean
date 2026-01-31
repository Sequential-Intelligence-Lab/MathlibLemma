import Mathlib

lemma gronwallBound_le_of_nonneg_δ {δ K ε x : ℝ} (hδ : 0 ≤ δ) :
    gronwallBound δ K ε x ≤ gronwallBound (max δ 0) K ε x := by
  sorry
