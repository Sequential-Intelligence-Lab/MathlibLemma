import Mathlib

/-- A uniform bound of the Gamma-type integral on compacts in `p`. -/
lemma Real.bound_integral_rpow_exp_neg_rpow_on_compact_p
    {q : ℝ} (hq : -1 < q) :
    ∀ K : Set ℝ, IsCompact K → (0 : ℝ) < ⨅ p : K, (p : ℝ) →
      ∃ C, ∀ p ∈ K,
        ∫ x in Set.Ioi (0 : ℝ), x ^ q * Real.exp (-(x ^ (p : ℝ))) ≤ C := by
  sorry