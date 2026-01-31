import Mathlib

lemma derivWithin_id_Icc
    (a b x : ℝ) :
    derivWithin (fun y : ℝ => y) (Set.Icc a b) x = (1 : ℝ) := by
  sorry
