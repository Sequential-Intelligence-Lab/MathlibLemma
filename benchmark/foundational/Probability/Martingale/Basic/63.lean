import Mathlib

open scoped MeasureTheory

open MeasureTheory

variable {Ω : Type*} {m0 : MeasurableSpace Ω} {μ : Measure Ω}

/-- For a submartingale indexed by `ℕ`, the integral is monotone in `n`. -/
theorem Submartingale.integral_monotone_nat
    [IsFiniteMeasure μ]
    {𝒢 : Filtration ℕ m0}
    {f : ℕ → Ω → ℝ}
    (hf : Submartingale f 𝒢 μ) :
    Monotone (fun n => ∫ ω, f n ω ∂μ) := by
  sorry