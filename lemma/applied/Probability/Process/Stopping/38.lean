import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma stoppedValue_smul
  {Ω ι β : Type*} [Nonempty ι]
  [SMul ℝ β]
  (c : ℝ) (u : ι → Ω → β) (τ : Ω → WithTop ι) :
  MeasureTheory.stoppedValue (fun i ω => c • u i ω) τ
    =
  fun ω => c • MeasureTheory.stoppedValue u τ ω := by
  ext ω
  -- For each ω, we need to show that the stopped value of the scalar multiple equals the scalar multiple of the stopped value.
  simp [MeasureTheory.stoppedValue]
  -- Simplify using the definition of stoppedValue, which gives us the expression c • u (τ ω) ω on both sides.
  <;> aesop