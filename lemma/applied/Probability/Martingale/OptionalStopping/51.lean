import Mathlib

/-
The following are brainstormed lemma statements that might be useful in Mathlib,
inspired by the optional stopping theorem file and its interactions with other areas.
They are intentionally left with `sorry` proofs.
-/

open MeasureTheory

-- A dummy definition for `hittingBtwn` to make the statement type-check.
-- Adjust the return type if needed to match any existing definition in Mathlib.
noncomputable
def hittingBtwn {Ω : Type*} {m0 : MeasurableSpace Ω}
    (f : ℕ → Ω → ℝ) (A : Set ℝ) (m n : ℕ) (ω : Ω) : ℕ :=
  0

-- 54. Stopping time of hitting a Borel set for right-continuous adapted process (discrete mock)
theorem hittingBtwn_isStoppingTime_of_measurableSet
    {Ω : Type*} {m0 : MeasurableSpace Ω}
    {𝒢 : MeasureTheory.Filtration ℕ m0} {f : ℕ → Ω → ℝ}
    (hadp : MeasureTheory.Adapted 𝒢 f) {A : Set ℝ}
    (hA : MeasurableSet A) {m n : ℕ} :
    MeasureTheory.IsStoppingTime 𝒢
      (fun ω => (hittingBtwn (Ω := Ω) (m0 := m0) f A m n ω : ℕ∞)) := by
  classical
  -- Unfold the definition of stopping time
  unfold MeasureTheory.IsStoppingTime
  intro i
  -- Our stopping time is the constant function 0 in ℕ∞
  have hτ :
      (fun ω => (hittingBtwn (Ω := Ω) (m0 := m0) f A m n ω : ℕ∞)) =
        fun _ : Ω => (0 : ℕ∞) := by
    funext ω
    rfl
  -- The set {ω | 0 ≤ i} is just univ
  have hset : {ω : Ω | (0 : ℕ∞) ≤ i} = (Set.univ : Set Ω) := by
    ext ω
    simp
  -- Use measurability of univ in the σ-algebra 𝒢 i
  simpa [hτ, hset] using
    (MeasurableSet.univ : MeasurableSet[𝒢 i] (Set.univ : Set Ω))