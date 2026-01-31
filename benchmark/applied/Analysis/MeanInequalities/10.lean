import Mathlib


/-! 1. Variants / complements around AM-GM and Jensen-style results -/
theorem Real.geom_mean_le_Lp_mean
    {ι : Type*} (s : Finset ι) (p : ℝ)
    (hp : 0 < p) (w z : ι → ℝ)
    (hw : ∀ i ∈ s, 0 ≤ w i) (hwsum : ∑ i ∈ s, w i = 1)
    (hz : ∀ i ∈ s, 0 ≤ z i) :
    ∏ i ∈ s, z i ^ w i ≤
      (∑ i ∈ s, w i * z i ^ p) ^ (1 / p) := by
  sorry

/-! 2. Harmonic mean vs arithmetic / geometric, equality characterizations -/
