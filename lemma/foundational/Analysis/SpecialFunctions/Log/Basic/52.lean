import Mathlib

lemma Real.log_surjOn_Ioi : Set.SurjOn Real.log (Set.Ioi (0 : ℝ)) Set.univ := by
  -- Unfolding the definition of SurjOn, we must show:
  -- ∀ y ∈ Set.univ, ∃ x ∈ Set.Ioi (0 : ℝ), Real.log x = y.
  intro y hy
  refine ⟨Real.exp y, ?_, ?_⟩
  · -- `Real.exp y` lies in (0, ∞), i.e. it is positive.
    exact Real.exp_pos y
  · -- `log (exp y) = y`
    simpa using Real.log_exp y