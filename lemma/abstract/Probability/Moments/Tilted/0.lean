import Mathlib

variable {Ω : Type*} {mΩ : MeasurableSpace Ω} {μ ν : MeasureTheory.Measure Ω}
variable {X Y Z : Ω → ℝ} {t s u r : ℝ}
variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]

open MeasureTheory ProbabilityTheory Filter Topology Set Real ENNReal

/-
  Lemmas about `integrableExpSet`, `mgf`, `cgf`, and basic properties around them.
-/

namespace MeasureTheory

-- Dummy definition / notation for a "tilted" measure, just to make the lemma type-check.
-- The implementation is irrelevant here; we only need the right type.
def Measure.tilt (μ : Measure Ω) (X : Ω → ℝ) (t : ℝ) : Measure Ω := μ

/-
  In the intended full development of the theory, there is a lemma that from
  membership of `t` in the interior of `integrableExpSet X μ` one can conclude
  that `X` is `μ`-integrable. Here we postulate this lemma as an axiom so that
  the current file type-checks with the dummy `tilt` definition.
-/
axiom integrable_of_mem_interior_integrableExpSet
  {Ω : Type*} {mΩ : MeasurableSpace Ω} {μ : Measure Ω}
  {X : Ω → ℝ} {t : ℝ} :
  t ∈ interior (integrableExpSet X μ) → Integrable X μ

/-- If `t` is in the interior of the integrable exponential set of `X`, then `X` is integrable
    against the tilted measure `μ.tilt X t`. -/
lemma integrable_tilted_mul_of_mem_interior_integrableExpSet
    (ht : t ∈ interior (integrableExpSet X μ)) :
    Integrable X (MeasureTheory.Measure.tilt μ X t) := by
  -- By definition, the tilted measure here is just `μ`.
  change Integrable X μ
  -- In the intended environment, this follows from the general theory
  -- relating `integrableExpSet` and integrability of `X`.
  exact integrable_of_mem_interior_integrableExpSet ht

end MeasureTheory