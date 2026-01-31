import Mathlib

/-! ### Complex-analytic / measure / topology interaction lemmas -/

variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
  [NormedAddCommGroup F] [NormedSpace ℂ F]

/-! #### Rectangle / annulus / circle integral related lemmas -/
lemma Complex.integral_boundary_rect_conj_symm
    (f : ℂ → E) (z w : ℂ) :
    (∫ x : ℝ in z.re..w.re, f (x + z.im * Complex.I)) =
      (∫ x : ℝ in z.re..w.re, f ((x : ℂ) + z.im * Complex.I)) :=
by
  sorry