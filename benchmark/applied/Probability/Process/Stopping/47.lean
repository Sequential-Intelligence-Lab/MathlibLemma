import Mathlib

-- 48. Stopped process is zero after τ for processes that are constant afterwards.
lemma stoppedProcess_constAfter
  {Ω ι β : Type*} [LinearOrder ι] [Nonempty ι]
  (u : ι → Ω → β) (τ : Ω → WithTop ι)
  (hconst : ∀ ω (i j : ι), (i : WithTop ι) ≥ τ ω → (j : WithTop ι) ≥ τ ω → u i ω = u j ω) :
  ∀ (i : ι) (ω : Ω), (i : WithTop ι) ≥ τ ω →
    MeasureTheory.stoppedProcess u τ i ω = MeasureTheory.stoppedValue u τ ω := by
  sorry