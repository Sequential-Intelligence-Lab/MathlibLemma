import Mathlib

lemma Real.log_prod_abs {α : Type*} (s : Finset α) (f : α → ℝ)
    (hf : ∀ a ∈ s, f a ≠ 0) :
    Real.log |s.prod f| = s.sum (fun a => Real.log |f a|) := by
  sorry