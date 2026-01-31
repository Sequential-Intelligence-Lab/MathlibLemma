import Mathlib

/-! ### Complex-analytic / measure / topology interaction lemmas -/

variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
  [NormedAddCommGroup F] [NormedSpace ℂ F]

open scoped ComplexConjugate
open Complex Metric

/-! #### Rectangle / annulus / circle integral related lemmas -/

/-- A basic norm bound for the circle integral of `f` on the circle `C(c, R)`. -/
lemma circleIntegral_norm_le_mul_norm
    (f : ℂ → E) (c : ℂ) (R : ℝ) :
    ‖∮ z in C(c, R), f z‖ ≤ (2 * Real.pi * |R|) * (⨆ z ∈ sphere c R, ‖f z‖) :=
by
  sorry