import Mathlib

/-
The following are brainstormed lemma statements that might be useful in Mathlib,
inspired by the optional stopping theorem file and its interactions with other areas.
They are intentionally left with `sorry` proofs.
-/

open MeasureTheory

-- 77. HittingBtwn equal to m if starting in A
theorem hittingBtwn_eq_m_if_mem
    {Ω : Type*} {m0 : MeasurableSpace Ω}
    {f : ℕ → Ω → ℝ} {A : Set ℝ} {m n : ℕ} {ω : Ω}
    (hmem : f m ω ∈ A) :
    MeasureTheory.hittingBtwn f A m n ω = m := by
  sorry