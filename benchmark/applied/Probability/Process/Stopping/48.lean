import Mathlib

-- 49. If τ ≤ i, then stopped process at time i equals stopped value at τ.
lemma stoppedProcess_eq_stoppedValue_of_ge
  {Ω ι β : Type*} [LinearOrder ι] [Nonempty ι]
  (u : ι → Ω → β) (τ : Ω → WithTop ι) (i : ι)
  (h : ∀ ω, τ ω ≤ i) :
  (fun ω => MeasureTheory.stoppedProcess u τ i ω)
    = MeasureTheory.stoppedValue u τ := by
  sorry
