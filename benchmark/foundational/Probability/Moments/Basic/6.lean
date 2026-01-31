import Mathlib

/-! ### Brainstormed lemmas about `moment` -/
lemma moment_id_map
    {Ω : Type*} {m : MeasurableSpace Ω} {μ : MeasureTheory.Measure Ω} {X : Ω → ℝ} {p : ℕ}
    (hX : AEMeasurable X μ) :
    ProbabilityTheory.moment id p (MeasureTheory.Measure.map X μ) =
      ProbabilityTheory.moment X p μ := by
  sorry