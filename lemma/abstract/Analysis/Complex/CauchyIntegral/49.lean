import Mathlib

/-! ### Complex-analytic / measure / topology interaction lemmas -/

variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
  [NormedAddCommGroup F] [NormedSpace ℂ F]

open MeasureTheory

namespace Complex

/-! #### Rectangle / annulus / circle integral related lemmas -/

variable [MeasureSpace ℂ]

lemma integrableOn_annulus_of_integrableOn_ball_diff
    {f : ℂ → E} {c : ℂ} {R r : ℝ}
    (hr : 0 < r) (hR : r ≤ R)
    (hf₁ : IntegrableOn f (Metric.ball c R))
    (hf₂ : IntegrableOn f (Metric.ball c r)) :
    IntegrableOn f (Metric.ball c R \ Metric.closedBall c r) :=
by
  -- The annulus `Metric.ball c R \ Metric.closedBall c r` is a subset of `Metric.ball c R`,
  -- so we can restrict `hf₁` using `IntegrableOn.mono_set`.
  refine hf₁.mono_set ?_
  intro z hz
  -- `hz` is a membership in the set difference, so it's a pair of conditions.
  exact hz.1

end Complex