import Mathlib

/-
The following are brainstormed lemma statements that might be useful in Mathlib,
inspired by the optional stopping theorem file and its interactions with other areas.
They are intentionally left with `sorry` proofs.
-/

open scoped ProbabilityTheory

open MeasureTheory

/-- 21. Expected difference at stopping times for martingale is zero -/
theorem MeasureTheory.Martingale.expected_diff_stopped_eq_zero
    {Ω : Type*} {m0 : MeasurableSpace Ω} (μ : Measure Ω)
    {𝒢 : Filtration ℕ m0}
    {f : ℕ → Ω → ℝ}
    (hf : MeasureTheory.Martingale f 𝒢 μ)
    {τ π : Ω → ℕ∞}
    (hτ : MeasureTheory.IsStoppingTime 𝒢 τ)
    (hπ : MeasureTheory.IsStoppingTime 𝒢 π)
    (hle : τ ≤ π) {N : ℕ} (hbdd : ∀ ω, π ω ≤ N) :
    μ[MeasureTheory.stoppedValue f π - MeasureTheory.stoppedValue f τ] = 0 := by
  sorry