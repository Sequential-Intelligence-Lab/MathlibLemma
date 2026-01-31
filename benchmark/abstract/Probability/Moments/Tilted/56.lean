import Mathlib

open MeasureTheory ProbabilityTheory Filter Topology Set Real ENNReal

variable {Ω : Type*} [MeasurableSpace Ω]
variable {μ ν : Measure Ω}
variable {X Y Z : Ω → ℝ} {t s u r : ℝ}
variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]

/-
  Lemmas about `integrableExpSet`, `mgf`, `cgf`, and basic properties around them.
-/
/-- Expression for the third derivative of `cgf` in terms of centered third moment under the
    tilted measure. -/
lemma iteratedDeriv_three_cgf_eq_third_central_moment_tilted
    (ht : t ∈ interior (integrableExpSet X (μ := μ))) :
    iteratedDeriv 3 (cgf X (μ := μ)) t
      =
        ∫ ω, (X ω -
          ∫ x, X x ∂(μ.tilted (fun ω => t * X ω))) ^ 3
        ∂(μ.tilted (fun ω => t * X ω)) := by
  sorry