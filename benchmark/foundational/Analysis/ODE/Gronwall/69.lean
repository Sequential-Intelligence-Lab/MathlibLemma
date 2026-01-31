import Mathlib

lemma gronwallBound_solve_linearODE
    {δ K ε : ℝ} :
    ∀ x, gronwallBound δ K ε x =
      δ * Real.exp (K * x) + ∫ t in (0)..x, ε * Real.exp (K * (x - t)) := by
  sorry