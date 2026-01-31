import Mathlib

universe u v

open scoped BigOperators
open MeasureTheory
open ProbabilityTheory

/-
The following are brainstormed lemma statements that might be useful in Mathlib,
inspired by the optional stopping theorem file and its interactions with other areas.
They are intentionally left with `sorry` proofs.
-/

/-- 27. Submartingale property under truncation in time -/
theorem Submartingale.truncate
    {Ω : Type u} {m0 : MeasurableSpace Ω} {μ : Measure Ω}
    {𝒢 : Filtration ℕ m0}
    {f : ℕ → Ω → ℝ} (hf : Submartingale f 𝒢 μ) (N : ℕ) :
    Submartingale (fun n ω => f (Nat.min n N) ω) 𝒢 μ := by
  sorry