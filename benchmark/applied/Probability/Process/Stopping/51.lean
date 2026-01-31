import Mathlib

-- 52. If τ is deterministic, then stopped value reduces to deterministic time evaluation.
lemma stoppedValue_det
  {Ω ι β : Type*} [Nonempty ι]
  (u : ι → Ω → β) (t : ι) :
  MeasureTheory.stoppedValue u (fun _ => (t : WithTop ι)) =
    fun ω => u t ω := by
  sorry
