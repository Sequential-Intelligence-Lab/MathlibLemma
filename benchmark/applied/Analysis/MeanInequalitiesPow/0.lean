import Mathlib

lemma Real.strict_convexOn_rpow {p : ℝ} (hp1 : 1 < p) :
    StrictConvexOn ℝ (Set.Ici (0 : ℝ)) (fun x => x ^ p) := by
  sorry
