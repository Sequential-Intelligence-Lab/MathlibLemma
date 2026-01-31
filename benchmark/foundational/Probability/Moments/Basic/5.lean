import Mathlib

open MeasureTheory

lemma moment_map
    {Ω Ω' : Type*} {m : MeasurableSpace Ω} {m' : MeasurableSpace Ω'}
    {μ : Measure Ω'} {Y : Ω' → Ω} {X : Ω → ℝ} {p : ℕ}
    (hY : AEMeasurable Y μ)
    (hX : AEStronglyMeasurable (fun ω ↦ (X ω) ^ p) (Measure.map Y μ)) :
    ProbabilityTheory.moment X p (Measure.map Y μ) =
      ProbabilityTheory.moment (X ∘ Y) p μ := by
  sorry