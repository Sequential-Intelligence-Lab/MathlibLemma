import Mathlib


/-! ### Complex-analytic / measure / topology interaction lemmas -/

variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
  [NormedAddCommGroup F] [NormedSpace ℂ F]

/-! #### Rectangle / annulus / circle integral related lemmas -/
lemma Complex.integral_boundary_rect_eq_integral_top_sub_bottom
    (f : ℂ → E) (z w : ℂ) :
    (∫ x : ℝ in z.re..w.re, f (x + z.im * Complex.I))
      - (∫ x : ℝ in z.re..w.re, f (x + w.im * Complex.I))
      + Complex.I • (∫ y : ℝ in z.im..w.im, f (w.re + y * Complex.I))
      - Complex.I • (∫ y : ℝ in z.im..w.im, f (z.re + y * Complex.I))
    =
    (∫ x : ℝ in z.re..w.re, f (x + z.im * Complex.I))
      - (∫ x : ℝ in z.re..w.re, f (x + w.im * Complex.I))
      + Complex.I • (∫ y : ℝ in z.im..w.im, f (w.re + y * Complex.I))
      - Complex.I • (∫ y : ℝ in z.im..w.im, f (z.re + y * Complex.I)) :=
by
  sorry
