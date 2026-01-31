import Mathlib

lemma RCLike.re_series_mul_conj_nonneg
    {K : Type*} [RCLike K]
    {α : Type*} [Fintype α] (f : α → K) :
    0 ≤ RCLike.re (∑ a, f a * star (f a)) := by
  sorry