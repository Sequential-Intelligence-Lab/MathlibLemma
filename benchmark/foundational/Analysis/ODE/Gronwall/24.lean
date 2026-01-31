import Mathlib

lemma gronwallBound_add_x (δ K ε x y : ℝ) :
    gronwallBound δ K ε (x + y) =
      if K = 0 then δ + ε * (x + y)
      else δ * Real.exp (K * (x + y)) +
        ε / K * (Real.exp (K * (x + y)) - 1) := by
  sorry