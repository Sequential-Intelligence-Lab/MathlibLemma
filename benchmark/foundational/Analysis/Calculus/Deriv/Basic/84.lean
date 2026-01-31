import Mathlib

lemma derivWithin_id_singleton
    (x : ℝ) :
    derivWithin (fun y : ℝ => y) ({x} : Set ℝ) x = (0 : ℝ) := by
  sorry
