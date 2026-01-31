import Mathlib

open MeasureTheory ProbabilityTheory Filter Topology Set Real ENNReal

variable {Ω : Type*} [mΩ : MeasurableSpace Ω]
variable {X Y Z : Ω → ℝ} {t s u r : ℝ}
variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]

/-
  Lemmas about `integrableExpSet`, `mgf`, `cgf`, and basic properties around them.
-/

/-- A placeholder predicate asserting that `X` is a centered normal random variable
with variance `σ^2` (with respect to the underlying probability measure). -/
class IsGaussianRV {Ω : Type*} [MeasurableSpace Ω] (X : Ω → ℝ) (m σ : ℝ) : Prop :=
  dummy : True

/-- The cgf of a centered normal random variable with variance `σ^2` equals `t^2 σ^2 / 2`. -/
lemma cgf_gaussian
    {Ω : Type*} [MeasurableSpace Ω]
    (μ : Measure Ω)
    (X : Ω → ℝ)
    (σ : ℝ)
    (hσpos : 0 < σ)
    [IsGaussianRV X 0 σ] :
    cgf X μ t = t^2 * σ^2 / 2 := by
  sorry