import Mathlib

lemma sq_comp_sqrt (f : ℝ → ℝ) :
    (fun x => (√(f x)) ^ 2) = fun x => max 0 (f x) := by
  sorry
