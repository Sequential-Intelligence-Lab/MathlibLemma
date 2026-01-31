import Mathlib

-- 27. Stopped process with τ = ⊤ is identically the original process.
lemma stoppedProcess_at_top
  {Ω ι β : Type*} [LinearOrder ι] [Nonempty ι]
  (u : ι → Ω → β) :
  MeasureTheory.stoppedProcess u (fun _ => (⊤ : WithTop ι)) = u := by
  sorry
