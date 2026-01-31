import Mathlib


/-! 1. Variants / complements around AM-GM and Jensen-style results -/
theorem Real.holder_eq_iff
    {ι : Type*} (s : Finset ι) {p q : ℝ}
    (hpq : p.HolderConjugate q)
    (f g : ι → ℝ)
    (hf : ∀ i ∈ s, 0 ≤ f i)
    (hg : ∀ i ∈ s, 0 ≤ g i) :
    (∑ i ∈ s, f i * g i) =
      (∑ i ∈ s, f i ^ p) ^ (1 / p) *
      (∑ i ∈ s, g i ^ q) ^ (1 / q)
      ↔
      (∃ c ≥ 0, ∀ i ∈ s, g i = c * f i ^ (p - 1)) := by
  sorry
