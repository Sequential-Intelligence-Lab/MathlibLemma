import Mathlib

-- 99. Stopped process at min(τ, σ) equals stopping at τ then at σ.
lemma stoppedProcess_min
  {Ω ι β : Type*} [LinearOrder ι] [Nonempty ι]
  (u : ι → Ω → β)
  (τ σ : Ω → WithTop ι) :
  MeasureTheory.stoppedProcess u (fun ω => min (τ ω) (σ ω))
    =
  MeasureTheory.stoppedProcess (MeasureTheory.stoppedProcess u τ) σ := by
  sorry
