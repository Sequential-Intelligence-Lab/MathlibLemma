import Mathlib

/-
The following are brainstormed lemma statements that might be useful in Mathlib,
inspired by the optional stopping theorem file and its interactions with other areas.
They are intentionally left with `sorry` proofs.
-/

open MeasureTheory

-- 57. Integrability of stopped process at each deterministic time
theorem Submartingale.integrable_stoppedProcess_at
    {Ω : Type*} {m0 : MeasurableSpace Ω} {μ : Measure Ω}
    [IsFiniteMeasure μ] {𝒢 : Filtration ℕ m0}
    {β : Type*}
    [NormedAddCommGroup β] [NormedSpace ℝ β] [CompleteSpace β] [LE β]
    {f : ℕ → Ω → β} (hf : Submartingale f 𝒢 μ)
    {τ : Ω → ℕ∞} (hτ : IsStoppingTime 𝒢 τ)
    (n : ℕ) :
    Integrable (stoppedProcess f τ n) μ := by
  sorry