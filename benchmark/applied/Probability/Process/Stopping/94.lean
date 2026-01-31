import Mathlib

-- 95. Stopped process of a nonnegative process is nonnegative.
lemma stoppedProcess_nonneg
  {Ω ι : Type*} [LinearOrder ι] [Nonempty ι]
  (u : ι → Ω → ℝ)
  (τ : Ω → WithTop ι)
  (h : ∀ i ω, 0 ≤ u i ω) :
  ∀ i ω, 0 ≤ MeasureTheory.stoppedProcess u τ i ω := by
  sorry
