import Mathlib

lemma gronwallBound_shift (δ K ε a x : ℝ) :
    gronwallBound δ K ε (x - a) =
      if K = 0 then δ + ε * (x - a)
      else δ * Real.exp (K * (x - a)) +
        ε / K * (Real.exp (K * (x - a)) - 1) := by
  sorry