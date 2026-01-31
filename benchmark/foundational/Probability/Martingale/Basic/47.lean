import Mathlib

open MeasureTheory

variable {Ω : Type _} {m0 : MeasurableSpace Ω} {μ : Measure Ω}

/-- Integrability of the running maximum of a finite-horizon real-valued martingale. -/
theorem Martingale.integrable_max_over_range_nat
    [IsFiniteMeasure μ]
    {𝒢 : Filtration ℕ m0}
    {f : ℕ → Ω → ℝ}
    (hf : Martingale f 𝒢 μ)
    (N : ℕ)
    (hint : ∀ n ≤ N, Integrable (f n) μ) :
    Integrable
      (fun ω =>
        Finset.sup'
          (Finset.range (N + 1))
          (by
            -- `Finset.sup'` needs a proof that the finset is nonempty
            refine ⟨0, ?_⟩
            have h : 0 < N + 1 := Nat.succ_pos _
            simpa using h)
          (fun n => f n ω)) μ := by
  sorry