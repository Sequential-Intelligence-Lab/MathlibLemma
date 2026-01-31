import Mathlib

lemma intervalIntegrable_min (a b : ℝ) (f g : ℝ → ℝ)
    (hf : IntervalIntegrable f volume a b)
    (hg : IntervalIntegrable g volume a b) :
    IntervalIntegrable (fun x => min (f x) (g x)) volume a b := by
  sorry
