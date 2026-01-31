import Mathlib

open MeasureTheory ProbabilityTheory Filter Topology Set Real ENNReal

variable {Ω : Type*} [mΩ : MeasurableSpace Ω] {μ ν : Measure Ω}
variable {X Y Z : Ω → ℝ} {t s u r : ℝ}
variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]
variable [IsProbabilityMeasure μ]

/-
  Lemmas about `integrableExpSet`, `mgf`, `cgf`, and basic properties around them.
-/

/-- The cgf at `0` is zero. -/
lemma cgf_zero
    (hX : Integrable (fun ω ↦ exp (0 * X ω)) μ := by
      -- `exp (0 * X ω)` is the constant function `1`, which is integrable
      -- under a finite (in particular, probability) measure.
      have h1 : Integrable (fun _ : Ω => (1 : ℝ)) μ :=
        integrable_const (1 : ℝ)
      have hEq : (fun ω : Ω => Real.exp (0 * X ω)) =
          (fun _ : Ω => (1 : ℝ)) := by
        funext ω
        simp
      simpa [hEq] using h1) :
    cgf X μ 0 = 0 := by
  classical
  -- At `t = 0`, the integrand is constantly `1`, whose expectation is `1`
  -- under a probability measure; hence `cgf X μ 0 = log 1 = 0`.
  simp [cgf, mgf, hX]