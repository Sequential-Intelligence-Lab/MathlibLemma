import Mathlib

-- 48. Stopped process is zero after τ for processes that are constant afterwards.
lemma stoppedProcess_constAfter
  {Ω ι β : Type*} [LinearOrder ι] [Nonempty ι]
  (u : ι → Ω → β) (τ : Ω → WithTop ι)
  (hconst :
    ∀ ω (i j : ι),
      (i : WithTop ι) ≥ τ ω → (j : WithTop ι) ≥ τ ω → u i ω = u j ω) :
  ∀ (i : ι) (ω : Ω), (i : WithTop ι) ≥ τ ω →
    MeasureTheory.stoppedProcess u τ i ω =
    MeasureTheory.stoppedValue u τ ω := by
  intro i ω hge
  -- Unfold both stoppedProcess and stoppedValue
  simp [MeasureTheory.stoppedProcess, MeasureTheory.stoppedValue] at *
  -- At this point, the goal is:
  -- u (min (↑i) (τ ω)).untopA ω = u (τ ω).untopA ω
  -- and hge : τ ω ≤ ↑i
  have hmin : min (↑i : WithTop ι) (τ ω) = τ ω :=
    min_eq_right hge
  -- Rewrite the index using hmin
  simpa [hmin]