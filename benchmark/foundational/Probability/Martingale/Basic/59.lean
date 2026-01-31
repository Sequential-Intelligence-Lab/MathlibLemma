import Mathlib

open MeasureTheory

namespace MeasureTheory

variable {Ω : Type*} {m0 : MeasurableSpace Ω} (μ : Measure Ω)
variable {𝒢 : Filtration ℕ m0}

/-- Integrability of the stopped value for a bounded stopping time of a real-valued submartingale. -/
theorem Submartingale.integrable_stoppedValue_bdd_nat
    {f : ℕ → Ω → ℝ} (hf : Submartingale f 𝒢 μ)
    {τ : Ω → WithTop ℕ} (hτ : IsStoppingTime 𝒢 τ) (N : ℕ)
    (hbdd : ∀ ω, τ ω ≤ N) :
    Integrable (stoppedValue f τ) μ := by
  sorry

end MeasureTheory