import Mathlib

/-! ### Complex-analytic / measure / topology interaction lemmas -/

/-! #### Rectangle / annulus / circle integral related lemmas -/
lemma Complex.circleIntegral_pow_sub_center
    (c : ℂ) (R : ℝ) (n : ℕ) (hR : 0 < R) :
    ∮ z in C(c, R), (z - c) ^ n = 0 :=
by
  sorry