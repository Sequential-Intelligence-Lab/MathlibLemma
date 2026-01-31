import Mathlib

lemma Real.convexOn_nnnorm_rpow {p : ℝ} (hp1 : 1 ≤ p) :
    ConvexOn ℝ (Set.univ : Set (ℝ →L[ℝ] ℝ)) fun f =>
      ‖f‖ ^ p := by
  sorry
