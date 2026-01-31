import Mathlib

open MeasureTheory

variable {Ω : Type _} {m0 : MeasurableSpace Ω} {μ : Measure Ω}

theorem Martingale.mul_predictable_nat
    [IsFiniteMeasure μ]
    {𝒢 : Filtration ℕ m0}
    {f ξ : ℕ → Ω → ℝ}
    (hf : Martingale f 𝒢 μ)
    (hξ : Adapted 𝒢 (fun n => ξ (n+1)))
    (hbdd : ∀ n ω, |ξ n ω| ≤ 1)
    (hnonneg : ∀ n ω, 0 ≤ ξ n ω) :
    Martingale
      (fun n => ∑ k ∈ Finset.range n, ξ (k+1) * (f (k+1) - f k))
      𝒢 μ := by
  sorry