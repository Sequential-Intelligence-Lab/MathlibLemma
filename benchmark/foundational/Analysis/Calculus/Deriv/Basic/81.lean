import Mathlib

lemma deriv_id_on_interval
    (a b : ℝ) :
    derivWithin (fun x : ℝ => x) (Set.Icc a b) =
      fun _ => (1 : ℝ) := by
  sorry
