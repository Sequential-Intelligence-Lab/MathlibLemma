import Mathlib

theorem Real.exp_surjective_on_Icc (a b : ℝ) :
    Set.SurjOn Real.exp (Set.Icc a b) (Set.Icc (Real.exp a) (Real.exp b)) := by
  sorry
