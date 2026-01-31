import Mathlib

-- 17. If a process has bounded paths, so does its stopped process.
lemma stoppedProcess_bddRange
  {Ω ι β : Type*} [LinearOrder ι] [Nonempty ι]
  [Semiring ι] [NormedRing β]
  (u : ι → Ω → β) (τ : Ω → WithTop ι)
  (h : ∀ ω, Bornology.IsBounded (Set.range fun i => u i ω)) :
  ∀ ω, Bornology.IsBounded (Set.range fun i => MeasureTheory.stoppedProcess u τ i ω) := by
  sorry
