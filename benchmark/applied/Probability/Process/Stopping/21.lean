import Mathlib

-- 22. Stopped process preserves pathwise monotonicity in time.
lemma stoppedProcess_mono_in_time
  {Ω ι β : Type*} [LinearOrder ι] [Nonempty ι] [Preorder β]
  (u : ι → Ω → β) (τ : Ω → WithTop ι)
  (hmono : ∀ ω, Monotone fun t => u t ω) :
  ∀ ω, Monotone fun t => MeasureTheory.stoppedProcess u τ t ω := by
  sorry