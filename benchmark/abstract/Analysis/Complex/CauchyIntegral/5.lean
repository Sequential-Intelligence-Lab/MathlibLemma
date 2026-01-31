import Mathlib

/-! ### Complex-analytic / measure / topology interaction lemmas -/

variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
  [NormedAddCommGroup F] [NormedSpace ℂ F]

/-! #### Rectangle / annulus / circle integral related lemmas -/
lemma Complex.circleIntegral_eq_of_eq_on_sphere
    {f g : ℂ → E} {c : ℂ} {R : ℝ}
    (hR : 0 ≤ R)
    (hfg : Set.EqOn f g (Metric.sphere c R)) :
    (∮ z in C(c, R), f z) = ∮ z in C(c, R), g z :=
by
  sorry