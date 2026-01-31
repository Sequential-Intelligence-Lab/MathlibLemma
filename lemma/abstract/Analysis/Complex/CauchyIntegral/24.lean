import Mathlib


/-! ### Complex-analytic / measure / topology interaction lemmas -/

variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
  [NormedAddCommGroup F] [NormedSpace ℂ F]

/-! #### Rectangle / annulus / circle integral related lemmas -/
lemma Complex.sphere_subset_compl_closedBall {c : ℂ} {r R : ℝ}
    (hrR : r > R) :
    Metric.sphere c r ⊆ (Metric.closedBall c R)ᶜ :=
by
  -- Unfold the subset relation
  intro x hx
  -- We need to show x is not in the closed ball
  intro hxBall
  -- From membership in the sphere, get an equality of distances
  have hdist_eq : dist x c = r := by
    simpa [Metric.sphere] using hx
  -- From membership in the closed ball, get an inequality of distances
  have hdist_le : dist x c ≤ R := by
    simpa [Metric.closedBall] using hxBall
  -- Combine to derive r ≤ R
  have hrle : r ≤ R := by
    simpa [hdist_eq] using hdist_le
  -- Contradict the strict inequality hypothesis r > R
  exact (not_le.mpr hrR) hrle