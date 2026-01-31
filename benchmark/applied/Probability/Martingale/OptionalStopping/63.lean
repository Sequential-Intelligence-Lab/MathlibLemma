import Mathlib

open MeasureTheory

/-
The following are brainstormed lemma statements that might be useful in Mathlib,
inspired by the optional stopping theorem file and its interactions with other areas.
They are intentionally left with `sorry` proofs.
-/

/-- 66. Equality of expectations of stopped martingale for nested bounded stopping times -/
theorem Martingale.expected_stoppedValue_eq_of_le_and_bounded
    {Ω : Type*} {m0 : MeasurableSpace Ω} (μ : Measure Ω)
    [IsFiniteMeasure μ]
    {𝒢 : Filtration ℕ m0} {f : ℕ → Ω → ℝ}
    (hM : Martingale f 𝒢 μ)
    {τ π : Ω → ℕ∞}
    (hτ : IsStoppingTime 𝒢 τ)
    (hπ : IsStoppingTime 𝒢 π)
    (hle : τ ≤ π)
    {N : ℕ} (hbdd : ∀ ω, π ω ≤ N) :
    ∫ ω, stoppedValue f τ ω ∂μ =
      ∫ ω, stoppedValue f π ω ∂μ := by
  sorry