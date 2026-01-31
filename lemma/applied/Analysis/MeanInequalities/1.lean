import Mathlib


/-! 1. Variants / complements around AM-GM and Jensen-style results -/
theorem Real.geom_mean_le_arith_mean_weighted_of_nonempty
    {ι : Type*} (s : Finset ι) (hs : s.Nonempty)
    (w z : ι → ℝ) (hw : ∀ i ∈ s, 0 ≤ w i) (hwsum : ∑ i ∈ s, w i = 1)
    (hz : ∀ i ∈ s, 0 ≤ z i) :
    ∏ i ∈ s, z i ^ w i ≤ ∑ i ∈ s, w i * z i := by
  -- `hs` is not needed; we can directly use the existing lemma in `Mathlib`.
  simpa using Real.geom_mean_le_arith_mean_weighted (s := s)
    (w := w) (z := z) hw hwsum hz