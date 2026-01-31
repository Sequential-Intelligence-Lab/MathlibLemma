import Mathlib

-- 39. Stopped value of scalar multiple.
lemma stoppedValue_smul
  {Ω ι β : Type*} [Nonempty ι]
  [SMul ℝ β]
  (c : ℝ) (u : ι → Ω → β) (τ : Ω → WithTop ι) :
  MeasureTheory.stoppedValue (fun i ω => c • u i ω) τ
    =
  fun ω => c • MeasureTheory.stoppedValue u τ ω := by
  sorry