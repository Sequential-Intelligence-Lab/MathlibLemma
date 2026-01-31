import Mathlib

-- 11. If a stopping time is always after a deterministic time, the stopped process agrees before.
lemma stoppedProcess_eq_original_before
  {Ω ι β : Type*} [LinearOrder ι] [Nonempty ι]
  (u : ι → Ω → β) (τ : Ω → WithTop ι) (i : ι)
  (h : ∀ ω, (i : WithTop ι) ≤ τ ω) :
  (fun ω => MeasureTheory.stoppedProcess u τ i ω) =
    fun ω => u i ω := by
  sorry
