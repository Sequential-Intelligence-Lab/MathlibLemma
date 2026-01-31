import Mathlib

/-! 1. Variants / complements around AM-GM and Jensen-style results -/
theorem Real.inner_le_Lp_mul_Lq_subtype
    {ι : Type*} (s : Finset ι)
    (t : Set ι) [DecidablePred (fun i => i ∈ t)]
    (f g : ι → ℝ) {p q : ℝ} (hpq : p.HolderConjugate q) :
    Finset.sum (s := s) (fun i => f i * g i) =
      Finset.sum (s := s.filter (fun i => i ∈ t)) (fun i => f i * g i)
      + Finset.sum (s := s.filter (fun i => i ∉ t)) (fun i => f i * g i) := by
  sorry

/-! 5. Minkowski inequality: equality, versions in ℝ≥0, ℝ≥0∞, sequences -/