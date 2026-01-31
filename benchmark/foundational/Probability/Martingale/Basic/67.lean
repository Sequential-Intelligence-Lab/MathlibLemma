import Mathlib

open MeasureTheory

variable {Ω : Type*} {m0 : MeasurableSpace Ω} {μ : Measure Ω}

theorem Supermartingale.condExp_sub_nonneg_nat'
    [IsFiniteMeasure μ] {𝒢 : Filtration ℕ m0}
    {f : ℕ → Ω → ℝ} (hf : Supermartingale f 𝒢 μ) (n : ℕ) :
    0 ≤ᵐ[μ] μ[f n - f (n+1) | 𝒢 n] := by
  sorry