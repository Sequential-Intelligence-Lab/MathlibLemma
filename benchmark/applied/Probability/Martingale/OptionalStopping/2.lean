import Mathlib

/-
The following are brainstormed lemma statements that might be useful in Mathlib,
inspired by the optional stopping theorem file and its interactions with other areas.
They are intentionally left with `sorry` proofs.
-/

/-- 4. Optional stopping for martingales in expectation form. -/
theorem MeasureTheory.Martingale.expected_stoppedValue_eq
    {Ω : Type*} {m0 : MeasurableSpace Ω} {μ : Measure Ω}
    {𝒢 : Filtration ℕ m0} {f : ℕ → Ω → ℝ}
    (hf : Martingale f 𝒢 μ) {τ π : Ω → ℕ∞}
    (hτ : IsStoppingTime 𝒢 τ)
    (hπ : IsStoppingTime 𝒢 π)
    (hle : τ ≤ π) {N : ℕ} (hbdd : ∀ ω, π ω ≤ N)
    [SigmaFinite μ] :
    ∫ ω, stoppedValue f τ ω ∂μ =
      ∫ ω, stoppedValue f π ω ∂μ := by
  sorry