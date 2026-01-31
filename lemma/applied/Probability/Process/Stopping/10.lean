import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma stoppedProcess_eq_original_before
  {Ω ι β : Type*} [LinearOrder ι] [Nonempty ι]
  (u : ι → Ω → β) (τ : Ω → WithTop ι) (i : ι)
  (h : ∀ ω, (i : WithTop ι) ≤ τ ω) :
  (fun ω => MeasureTheory.stoppedProcess u τ i ω) =
    fun ω => u i ω := by
  ext ω
  rw [MeasureTheory.stoppedProcess]
  -- Since τ ≥ i almost surely, for any fixed t ≤ i, t ≤ τ almost surely.
  -- Therefore, by the definition of the stopped process, u^τ(t) = u(t) almost surely.
  simp [h, le_refl, le_of_lt]
  -- Simplifying with the given condition h, which states that τ ≥ i almost surely,
  -- we conclude that u^τ(t) = u(t) for all t ≤ i almost surely.
  <;> aesop