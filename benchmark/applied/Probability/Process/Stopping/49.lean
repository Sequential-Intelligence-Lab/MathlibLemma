import Mathlib

-- 50. Stopped process is non-anticipative: depends only on τ and path until min(i, τ).
lemma stoppedProcess_nonanticipative
  {Ω ι β : Type*} [LinearOrder ι] [Nonempty ι]
  (u : ι → Ω → β) (τ : Ω → WithTop ι)
  (i : ι) :
  ∀ ω₁ ω₂,
    τ ω₁ = τ ω₂ →
    (∀ t ≤ min i (τ ω₁).untopA, u t ω₁ = u t ω₂) →
    MeasureTheory.stoppedProcess u τ i ω₁ =
      MeasureTheory.stoppedProcess u τ i ω₂ := by
  sorry
