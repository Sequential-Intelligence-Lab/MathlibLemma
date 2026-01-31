import Mathlib

open MeasureTheory

variable {Ω : Type*} {m0 : MeasurableSpace Ω} {μ : Measure Ω}

/-- A lemma about martingales and conditional expectations on `ℕ`. -/
theorem Martingale.condExp_sub_eq_zero_nat'
    [IsFiniteMeasure μ] {𝒢 : Filtration ℕ m0}
    {f : ℕ → Ω → ℝ} (hf : Martingale f 𝒢 μ) (n : ℕ) :
    μ[fun ω => f (n+1) ω - f n ω | 𝒢 n] =ᵐ[μ] 0 := by
  sorry