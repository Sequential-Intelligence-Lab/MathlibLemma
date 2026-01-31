import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma stoppedProcess_nonneg
  {Ω ι : Type*} [LinearOrder ι] [Nonempty ι]
  (u : ι → Ω → ℝ)
  (τ : Ω → WithTop ι)
  (h : ∀ i ω, 0 ≤ u i ω) :
  ∀ i ω, 0 ≤ MeasureTheory.stoppedProcess u τ i ω := by
  intro i ω
  -- The stopped process at time `i` is defined as the minimum of `u i ω` and the stopped process at time `i` for all `j ≤ i`.
  have h' := h i ω
  -- Since `u i ω` is nonnegative, the minimum of `u i ω` and any other nonnegative value is also nonnegative.
  simp [MeasureTheory.stoppedProcess, h']
  -- Therefore, the stopped process at time `i` is nonnegative.
  <;> simp_all [h']
  <;> linarith