import Mathlib

/-! 1. Variants / complements around AM-GM and Jensen-style results -/
theorem Real.min_le_geom_mean_weighted
    {ι : Type*} (s : Finset ι) (hs : s.Nonempty)
    (w z : ι → ℝ) (hw : ∀ i ∈ s, 0 ≤ w i) (hwsum : ∑ i ∈ s, w i = 1)
    (hz : ∀ i ∈ s, 0 ≤ z i) :
    s.inf' hs (fun i => z i) ≤ ∏ i ∈ s, z i ^ w i := by
  sorry