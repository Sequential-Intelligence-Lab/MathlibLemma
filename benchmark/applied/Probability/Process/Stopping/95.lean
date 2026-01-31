import Mathlib

-- 96. Stopped value of a nonnegative process is nonnegative.
lemma stoppedValue_nonneg
  {Ω ι : Type*} [Nonempty ι]
  (u : ι → Ω → ℝ)
  (τ : Ω → WithTop ι)
  (h : ∀ i ω, 0 ≤ u i ω) :
  ∀ ω, 0 ≤ MeasureTheory.stoppedValue u τ ω := by
  sorry
