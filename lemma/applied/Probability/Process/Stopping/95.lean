import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma stoppedValue_nonneg
  {Ω ι : Type*} [Nonempty ι]
  (u : ι → Ω → ℝ)
  (τ : Ω → WithTop ι)
  (h : ∀ i ω, 0 ≤ u i ω) :
  ∀ ω, 0 ≤ MeasureTheory.stoppedValue u τ ω := by
  intro ω
  -- Extract the nonnegativity property of the process u
  have h' := h
  -- Use the definition of the stopped value and the nonnegativity property
  simp [MeasureTheory.stoppedValue, h']
  -- Since u i ω is nonnegative for all i and ω, the stopped value u_τ ω is also nonnegative
  <;> aesop