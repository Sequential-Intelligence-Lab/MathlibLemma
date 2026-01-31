import Mathlib

/-
The following are brainstormed lemma statements that might be useful in Mathlib,
inspired by the optional stopping theorem file and its interactions with other areas.
They are intentionally left with `sorry` proofs.
-/

-- 70. Stopping time of minimum of two stopping times
theorem isStoppingTime_min'
    {Ω : Type*} {m0 : MeasurableSpace Ω}
    {𝒢 : MeasureTheory.Filtration ℕ m0} {τ π : Ω → ℕ∞}
    (hτ : MeasureTheory.IsStoppingTime 𝒢 τ)
    (hπ : MeasureTheory.IsStoppingTime 𝒢 π) :
    MeasureTheory.IsStoppingTime 𝒢 (fun ω => min (τ ω) (π ω)) := by
  sorry