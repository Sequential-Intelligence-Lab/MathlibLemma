import Mathlib

lemma gronwallBound_add_x_nonneg
    {δ K ε x y : ℝ} (hx : 0 ≤ x) (hy : 0 ≤ y)
    (hδ : 0 ≤ δ) (hε : 0 ≤ ε) (hK : 0 ≤ K) :
    gronwallBound δ K ε (x + y) ≤
      gronwallBound δ K ε x * Real.exp (K * y) +
        (ε / K) * (Real.exp (K * (x + y)) - Real.exp (K * x)) := by
  sorry