import Mathlib

open MeasureTheory

variable {Ω : Type*} {m0 : MeasurableSpace Ω} {μ : Measure Ω}

theorem Supermartingale.integral_antitone_nat
    [IsFiniteMeasure μ]
    {𝒢 : Filtration ℕ m0}
    {f : ℕ → Ω → ℝ}
    (hf : Supermartingale f 𝒢 μ) :
    Antitone (fun n => ∫ ω, f n ω ∂μ) := by
  sorry