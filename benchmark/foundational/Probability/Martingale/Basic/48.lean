import Mathlib

open MeasureTheory

theorem Submartingale.integrable_max_over_range_nat
    {Ω : Type _} {m0 : MeasurableSpace Ω}
    {μ : Measure Ω} [IsFiniteMeasure μ] {𝒢 : Filtration ℕ m0}
    {f : ℕ → Ω → ℝ} (hf : Submartingale f 𝒢 μ) (N : ℕ)
    (hint : ∀ n ≤ N, Integrable (f n) μ) :
    Integrable
      (fun ω =>
        (Finset.range (N + 1)).fold max 0 (fun n => f n ω)) μ := by
  sorry