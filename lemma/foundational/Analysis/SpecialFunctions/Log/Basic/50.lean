import Mathlib

lemma Real.log_image_Ioi : Real.log '' Set.Ioi (0 : ℝ) = Set.univ := by
  -- We show every real number is in the image of `log` of `(0, ∞)`
  apply Set.eq_univ_iff_forall.mpr
  intro y
  -- Take x = exp y, which is positive and satisfies log x = y
  refine ⟨Real.exp y, ?_, ?_⟩
  · -- show exp y > 0
    exact Real.exp_pos y
  · -- show log (exp y) = y
    simpa using Real.log_exp y