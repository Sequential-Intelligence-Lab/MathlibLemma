import Mathlib

/-! ### Complex-analytic / measure / topology interaction lemmas -/

variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
  [NormedAddCommGroup F] [NormedSpace ℂ F]

open Complex

/-! #### Rectangle / annulus / circle integral related lemmas -/

namespace Complex

/-- Circle integral of `1 / (z - c)` over a circle centered at `c` of radius `R`. -/
lemma circleIntegral_one_div_sub_center (c : ℂ) (R : ℝ) (hR : 0 < R) :
    ∮ z in C(c, R), (1 / (z - c)) = (2 * Real.pi * Complex.I) :=
by
  sorry

end Complex