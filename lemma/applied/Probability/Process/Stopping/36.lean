import Mathlib

-- 37. Stopped process of scalar multiple.
lemma stoppedProcess_smul
  {Ω ι β : Type*} [LinearOrder ι] [Nonempty ι]
  [SMul ℝ β]
  (c : ℝ) (u : ι → Ω → β) (τ : Ω → WithTop ι) :
  MeasureTheory.stoppedProcess (fun i ω => c • u i ω) τ
    =
  fun i ω => c • MeasureTheory.stoppedProcess u τ i ω := by
  classical
  -- Prove equality of functions pointwise
  funext i
  funext ω
  -- Split on the defining condition of the stopped process
  by_cases h : (i : WithTop ι) ≤ τ ω
  · -- Case where i ≤ τ ω
    simp [MeasureTheory.stoppedProcess, h]
  · -- Case where i > τ ω
    simp [MeasureTheory.stoppedProcess, h]