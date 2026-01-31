import Mathlib

lemma gronwallBound_x_sub_a_nonneg {δ K ε a x : ℝ}
    (hδ : 0 ≤ δ) (hε : 0 ≤ ε) (hK : 0 ≤ K) (hx : a ≤ x) :
    0 ≤ gronwallBound δ K ε (x - a) := by
  sorry
