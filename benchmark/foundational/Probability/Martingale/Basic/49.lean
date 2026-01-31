import Mathlib

open MeasureTheory

theorem Supermartingale.integrable_inf_over_range_nat
    {Ω : Type _} {m0 : MeasurableSpace Ω}
    {μ : Measure Ω} [IsFiniteMeasure μ]
    {𝒢 : Filtration ℕ m0}
    {f : ℕ → Ω → ℝ}
    (hf : Supermartingale f 𝒢 μ) (N : ℕ)
    (hint : ∀ n ≤ N, Integrable (f n) μ) :
    Integrable
      (fun ω =>
        Finset.inf' (Finset.range (N + 1))
          (by
            -- `Finset.range (N+1)` is nonempty, and `0 ∈ range (N+1)`
            refine ⟨0, ?_⟩
            exact Finset.mem_range.mpr (Nat.succ_le_succ (Nat.zero_le N)))
          (fun n => f n ω)) μ := by
  sorry