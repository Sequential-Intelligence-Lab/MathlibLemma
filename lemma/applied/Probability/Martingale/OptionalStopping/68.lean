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
  -- unfold the definition of stopping time for the max
  intro n
  -- rewrite the event {ω | max (τ ω) (π ω) ≤ n} as an intersection
  have hset :
      {ω | max (τ ω) (π ω) ≤ n} =
        {ω | τ ω ≤ n ∧ π ω ≤ n} := by
    ext ω
    -- make the codomain explicit as ℕ∞ to help typeclass inference
    change max (τ ω) (π ω) ≤ (n : ℕ∞) ↔ _
    -- now apply `max_le_iff` in ℕ∞
    simpa using
      (max_le_iff : max (τ ω) (π ω) ≤ (n : ℕ∞) ↔
        τ ω ≤ (n : ℕ∞) ∧ π ω ≤ (n : ℕ∞))
  have hset' :
      {ω | τ ω ≤ n ∧ π ω ≤ n} =
        {ω | τ ω ≤ n} ∩ {ω | π ω ≤ n} := by
    ext ω
    rfl
  -- now use measurability and closure under intersection
  have hmeas :
      MeasurableSet[𝒢 n] ({ω | τ ω ≤ n} ∩ {ω | π ω ≤ n}) :=
    (hτ n).inter (hπ n)
  simpa [hset, hset'] using hmeas