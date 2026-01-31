import Mathlib

-- 97. Stopped process preserves order between two processes.
lemma stoppedProcess_mono_process
  {Ω ι β : Type*} [LinearOrder ι] [Nonempty ι]
  [Preorder β]
  (u v : ι → Ω → β)
  (h : ∀ i ω, u i ω ≤ v i ω)
  (τ : Ω → WithTop ι) :
  ∀ i ω, MeasureTheory.stoppedProcess u τ i ω ≤
          MeasureTheory.stoppedProcess v τ i ω := by
  sorry
