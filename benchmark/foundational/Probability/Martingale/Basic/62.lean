import Mathlib

open MeasureTheory

variable {Ω : Type*} {m0 : MeasurableSpace Ω} {μ : Measure Ω}

theorem Martingale.integral_eq_const_nat
    [IsFiniteMeasure μ]
    {𝒢 : Filtration ℕ m0}
    {f : ℕ → Ω → ℝ} (hf : Martingale f 𝒢 μ) (n : ℕ) :
    ∫ ω, f n ω ∂μ = ∫ ω, f 0 ω ∂μ := by
  sorry