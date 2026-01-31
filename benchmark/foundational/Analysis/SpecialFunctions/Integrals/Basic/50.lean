import Mathlib

lemma integral_indicator_Ioc (a b c d : ℝ) :
    ∫ x in a..b, (Set.indicator (Set.Ioc c d) (fun _ => (1 : ℝ)) x) =
      (max (min b d) c - max (min a d) c) := by
  sorry
