import Mathlib

/-
The following are brainstormed lemma statements that might be useful in Mathlib,
inspired by the optional stopping theorem file and its interactions with other areas.
They are intentionally left with `sorry` proofs.
-/

open MeasureTheory

-- 51. Monotonicity of expected maximum with index n
theorem expected_sup_mono_in_n
    {Ω : Type*} {m0 : MeasurableSpace Ω} (μ : Measure Ω)
    {𝒢 : Filtration ℕ m0} {f : ℕ → Ω → ℝ}
    (hnonneg : ∀ n ω, 0 ≤ f n ω) :
    Monotone
      (fun n =>
        ∫ ω,
          (Finset.range (n + 1)).sup'
            (by
              -- `Finset.range (n + 1)` is nonempty since it contains `0`
              exact Finset.nonempty_range_succ)
            (fun k => f k ω) ∂μ) := by
  sorry