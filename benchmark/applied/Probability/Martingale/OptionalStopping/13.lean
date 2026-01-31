import Mathlib

/-
The following are brainstormed lemma statements that might be useful in Mathlib,
inspired by the optional stopping theorem file and its interactions with other areas.
They are intentionally left with `sorry` proofs.
-/

/-- 16. Inequality for supremum process of submartingale -/
theorem MeasureTheory.Submartingale.integrable_sup_process
    {Ω : Type*} {m0 : MeasurableSpace Ω} {μ : Measure Ω}
    [IsFiniteMeasure μ] {𝒢 : MeasureTheory.Filtration ℕ m0}
    {f : ℕ → Ω → ℝ} (hsub : MeasureTheory.Submartingale f 𝒢 μ)
    (hnonneg : ∀ n ω, 0 ≤ f n ω) (n : ℕ) :
    MeasureTheory.Integrable
      (fun ω =>
        (Finset.range (n + 1)).sup'
          (by
            refine ⟨0, ?_⟩
            exact Finset.mem_range.mpr (Nat.succ_le_succ (Nat.zero_le n)))
          (fun k => f k ω)) μ := by
  sorry