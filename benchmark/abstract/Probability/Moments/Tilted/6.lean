import Mathlib

open MeasureTheory ProbabilityTheory Filter Topology Set Real ENNReal

variable {Ω : Type*} {mΩ : MeasurableSpace Ω} {μ ν : MeasureTheory.Measure Ω}
variable {X Y Z : Ω → ℝ} {t s u r : ℝ}
variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]

/-
  Lemmas about `integrableExpSet`, `mgf`, `cgf`, and basic properties around them.
-/
/-- If `t` and `s` are in the interior of the integrable exponential set, then also the segment
    between them is in the interior. -/
lemma segment_subset_interior_integrableExpSet
    (ht : t ∈ interior (integrableExpSet X μ))
    (hs : s ∈ interior (integrableExpSet X μ)) :
    segment ℝ t s ⊆ interior (integrableExpSet X μ) := by
  sorry