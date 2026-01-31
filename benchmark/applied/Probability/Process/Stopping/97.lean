import Mathlib

-- 98. Stopped value preserves order between two processes.
lemma stoppedValue_mono_process
  {Ω ι β : Type*} [Nonempty ι]
  [Preorder β]
  (u v : ι → Ω → β)
  (h : ∀ i ω, u i ω ≤ v i ω)
  (τ : Ω → WithTop ι) :
  ∀ ω, MeasureTheory.stoppedValue u τ ω ≤
        MeasureTheory.stoppedValue v τ ω := by
  sorry
