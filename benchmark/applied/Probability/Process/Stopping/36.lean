import Mathlib

-- 37. Stopped process of scalar multiple.
lemma stoppedProcess_smul
  {Ω ι β : Type*} [LinearOrder ι] [Nonempty ι]
  [SMul ℝ β]
  (c : ℝ) (u : ι → Ω → β) (τ : Ω → WithTop ι) :
  MeasureTheory.stoppedProcess (fun i ω => c • u i ω) τ
    =
  fun i ω => c • MeasureTheory.stoppedProcess u τ i ω := by
  sorry