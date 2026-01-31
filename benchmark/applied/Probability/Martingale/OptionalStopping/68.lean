import Mathlib

open MeasureTheory

/-
The following are brainstormed lemma statements that might be useful in Mathlib,
inspired by the optional stopping theorem file and its interactions with other areas.
They are intentionally left with `sorry` proofs.
-/

/-- 71. Stopping time of maximum of two stopping times -/
theorem isStoppingTime_max'
    {Ω : Type*} {m0 : MeasurableSpace Ω}
    {𝒢 : Filtration ℕ m0} {τ π : Ω → ℕ∞}
    (hτ : IsStoppingTime 𝒢 τ) (hπ : IsStoppingTime 𝒢 π) :
    IsStoppingTime 𝒢 (fun ω => max (τ ω) (π ω)) := by
  sorry