import Mathlib

lemma Real.log_prod_le_sum_log {α : Type*} (s : Finset α) (f : α → ℝ)
    (hf : ∀ a ∈ s, 1 ≤ f a) :
    Real.log (s.prod f) ≤ s.sum (fun a => Real.log (f a)) := by
  classical
  -- From 1 ≤ f a, deduce f a ≠ 0 for all a ∈ s
  have hf_ne_zero : ∀ a ∈ s, f a ≠ 0 := by
    intro a ha hzero
    have : (1 : ℝ) ≤ 0 := by
      -- Using hf a ha and the assumption f a = 0
      simpa [hzero] using hf a ha
    exact (not_le_of_lt (show (0 : ℝ) < 1 from zero_lt_one)) this
  -- Use the log of a product lemma to get equality
  have hlog :
      Real.log (s.prod f) = s.sum (fun a => Real.log (f a)) := by
    simpa using (Real.log_prod (s := s) (f := f) hf_ne_zero)
  -- An equality implies the desired inequality
  exact le_of_eq hlog