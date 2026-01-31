import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma stoppedProcess_eq_stoppedValue_of_ge
  {Ω ι β : Type*} [LinearOrder ι] [Nonempty ι]
  (u : ι → Ω → β) (τ : Ω → WithTop ι) (i : ι)
  (h : ∀ ω, τ ω ≤ i) :
  (fun ω => MeasureTheory.stoppedProcess u τ i ω)
    = MeasureTheory.stoppedValue u τ := by
  -- Use extensionality to show that the functions are equal pointwise.
  apply funext
  intro ω
  -- Simplify the expression using the definition of stopped process and the given condition.
  simp [MeasureTheory.stoppedProcess, MeasureTheory.stoppedValue, h]
  -- Since τ(ω) ≤ i, min(i, τ(ω)) = τ(ω), thus the stopped process at i equals the stopped value at τ.
  <;> simp [h ω]
  <;> simp [h ω]
  <;> simp [h ω]