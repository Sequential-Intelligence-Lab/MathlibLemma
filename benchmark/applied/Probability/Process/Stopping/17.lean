import Mathlib

-- 18. Stopped process preserves pathwise Lipschitz continuity in time.
lemma stoppedProcess_lipschitz_in_time
  {Ω ι β : Type*}
  [LinearOrder ι] [Semiring ι]
  [PseudoEMetricSpace ι] [NormedRing β] [Nonempty ι]
  (u : ι → Ω → β) (τ : Ω → WithTop ι)
  (L : ℝ)
  (hLip : ∀ ω, LipschitzWith (Real.toNNReal L) (fun t => u t ω)) :
  ∀ ω, LipschitzWith (Real.toNNReal L) (fun t => MeasureTheory.stoppedProcess u τ t ω) := by
  sorry