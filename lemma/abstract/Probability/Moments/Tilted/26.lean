import Mathlib

open MeasureTheory ProbabilityTheory Filter Topology Set Real ENNReal

variable {Ω : Type*} {mΩ : MeasurableSpace Ω} {μ ν : MeasureTheory.Measure Ω}
variable [IsProbabilityMeasure μ]
variable {X Y Z : Ω → ℝ} {t s u r : ℝ}
variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]

/-
  Lemmas about `integrableExpSet`, `mgf`, `cgf`, and basic properties around them.
-/

/-- If `X` is a.s. constant `c`, then `mgf X μ t = exp (t * c)`. -/
lemma mgf_ae_const (c : ℝ) (hXc : X =ᵐ[μ] fun _ ↦ c) :
    mgf X μ t = Real.exp (t * c) := by
  -- First, show that the integrands inside the definition of `mgf` are a.e. equal.
  have h_ae :
      (fun ω => Real.exp (t * X ω)) =ᵐ[μ]
      (fun _ => Real.exp (t * c)) := by
    refine hXc.mono ?_
    intro ω hω
    -- Replace `X ω` by `c` and simplify.
    simpa [hω]

  -- Replace `X` by the a.e.-equal constant function inside `mgf`.
  have hcongr : mgf X μ t = mgf (fun _ : Ω => c) μ t := by
    -- Unfold the definition of `mgf` and use `integral_congr_ae` on the integrands.
    unfold mgf
    -- Now both sides are integrals; apply `integral_congr_ae` with `h_ae`.
    have := integral_congr_ae h_ae
    simpa using this

  -- Use the library lemma giving the mgf of a constant random variable.
  have hconst : mgf (fun _ : Ω => c) μ t = Real.exp (t * c) := by
    simpa using (mgf_const (μ := μ) (c := c) (t := t))

  -- Combine the two equalities.
  exact hcongr.trans hconst