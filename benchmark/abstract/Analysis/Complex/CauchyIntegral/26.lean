import Mathlib

/-! ### Complex-analytic / measure / topology interaction lemmas -/

variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
  [NormedAddCommGroup F] [NormedSpace ℂ F]

/-! #### Rectangle / annulus / circle integral related lemmas -/

-- Here we consider the "real subring" of `ℂ` as the subtype `{z : ℂ // z.im = 0}`.
lemma Complex.closedBall_realSubring_subset
    {c : {z : ℂ // z.im = 0}} {r : ℝ} :
    (Subtype.val ⁻¹' (Metric.closedBall (c.1 : ℂ) r)
      : Set {z : ℂ // z.im = 0}) ⊆
      Metric.closedBall c r :=
by
  sorry

/-! #### Misc complex / real-analytic relationships -/