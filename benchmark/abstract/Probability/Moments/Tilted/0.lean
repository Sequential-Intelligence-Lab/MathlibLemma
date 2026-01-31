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

end MeasureTheory

/-- If `t` is in the interior of the integrable exponential set of `X`, then `X` is integrable
    against the tilted measure `μ.tilt X t`. -/
lemma integrable_tilted_mul_of_mem_interior_integrableExpSet
    (ht : t ∈ interior (integrableExpSet X μ)) :
    Integrable X (MeasureTheory.Measure.tilt μ X t) := by
  sorry