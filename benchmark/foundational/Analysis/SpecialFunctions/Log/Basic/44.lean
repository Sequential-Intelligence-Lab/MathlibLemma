import Mathlib

lemma Real.log_prod_le_sum_log {α : Type*} (s : Finset α) (f : α → ℝ)
    (hf : ∀ a ∈ s, 1 ≤ f a) :
    Real.log (s.prod f) ≤ s.sum (fun a => Real.log (f a)) := by
  sorry