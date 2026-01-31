import Mathlib

-- 85. If τ₁ ≤ τ₂, then stoppedValue u τ₁ = stoppedValue (stoppedProcess u τ₂) τ₁.
lemma stoppedValue_of_stoppedProcess_le
  {Ω ι β : Type*} [LinearOrder ι] [Nonempty ι]
  (u : ι → Ω → β)
  (τ₁ τ₂ : Ω → WithTop ι)
  (h : ∀ ω, τ₁ ω ≤ τ₂ ω) :
  MeasureTheory.stoppedValue u τ₁ =
    MeasureTheory.stoppedValue (MeasureTheory.stoppedProcess u τ₂) τ₁ := by
  sorry
