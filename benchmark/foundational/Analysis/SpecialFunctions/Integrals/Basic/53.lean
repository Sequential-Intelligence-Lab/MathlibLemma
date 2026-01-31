import Mathlib

lemma intervalIntegrable_max (a b : ℝ) (f g : ℝ → ℝ)
    (hf : IntervalIntegrable f volume a b)
    (hg : IntervalIntegrable g volume a b) :
    IntervalIntegrable (fun x => max (f x) (g x)) volume a b := by
  sorry
