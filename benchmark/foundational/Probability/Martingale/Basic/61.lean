import Mathlib

open MeasureTheory

theorem Martingale.integrable_stoppedValue_bdd_nat
    {Ω} {m0 : MeasurableSpace Ω} {μ : Measure Ω} {𝒢 : Filtration ℕ m0}
    {f : ℕ → Ω → ℝ} (hf : Martingale f 𝒢 μ) {τ : Ω → ℕ∞}
    (hτ : IsStoppingTime 𝒢 τ) (N : ℕ)
    (hbdd : ∀ ω, τ ω ≤ N) :
    Integrable (stoppedValue f τ) μ := by
  sorry