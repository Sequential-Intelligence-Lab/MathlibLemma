import Mathlib

/-! 1. Variants / complements around AM-GM and Jensen-style results -/

theorem Real.Linfty_le_Lp_finset
    {ι : Type*} (s : Finset ι) (hs : s.Nonempty)
    (f : ι → ℝ) {p : ℝ} (hp : 1 ≤ p) :
    s.sup' (by
      rcases hs with ⟨i, hi⟩
      exact ⟨i, hi⟩) (fun i => |f i|)
      ≤ (∑ i ∈ s, |f i| ^ p) ^ (1 / p) := by
  sorry

/-! 10. Further small generic inequalities that could be useful elsewhere -/