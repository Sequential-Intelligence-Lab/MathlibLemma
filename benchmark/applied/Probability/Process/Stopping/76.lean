import Mathlib

-- 77. Stopped process preserves left limits.
lemma stoppedProcess_leftLimits
  {Ω ι β : Type*} [LinearOrder ι] [TopologicalSpace ι] [OrderTopology ι]
  [Nonempty ι] [MetricSpace β]
  (u : ι → Ω → β) (τ : Ω → WithTop ι)
  (hLL : ∀ ω t, ∃ l, Filter.Tendsto (fun s => u s ω)
    (Filter.comap id (nhdsWithin t {s | s < t})) (nhds l)) :
  ∀ ω t, ∃ l, Filter.Tendsto (fun s =>
    MeasureTheory.stoppedProcess u τ s ω)
    (Filter.comap id (nhdsWithin t {s | s < t})) (nhds l) := by
  sorry
