import Mathlib

open MeasureTheory

theorem Supermartingale.integrable_stoppedValue_bdd_nat
    {Ω} {m0 : MeasurableSpace Ω} {μ : Measure Ω} {𝒢 : MeasureTheory.Filtration ℕ m0}
    [CompleteSpace ℝ]
    {f : ℕ → Ω → ℝ} (hf : MeasureTheory.Supermartingale f 𝒢 μ) {τ : Ω → ℕ∞}
    (hτ : MeasureTheory.IsStoppingTime 𝒢 τ) (N : ℕ)
    (hbdd : ∀ ω, τ ω ≤ N) :
    MeasureTheory.Integrable (MeasureTheory.stoppedValue f τ) μ := by
  sorry