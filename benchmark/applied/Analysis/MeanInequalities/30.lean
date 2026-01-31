import Mathlib


/-! 1. Variants / complements around AM-GM and Jensen-style results -/
theorem Real.Lp_le_Lq_finset
    {ι : Type*} (s : Finset ι) (f : ι → ℝ)
    {p q : ℝ} (hp : 1 ≤ p) (hpq : p ≤ q) :
    (∑ i ∈ s, |f i| ^ q) ^ (1 / q)
      ≤ (∑ i ∈ s, |f i| ^ p) ^ (1 / p) := by
  sorry
