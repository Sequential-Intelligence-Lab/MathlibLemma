import Mathlib

open MeasureTheory Filter

lemma Submartingale.expectation_upcrossings_tendsto
    {Ω : Type*} {m0 : MeasurableSpace Ω} {μ : Measure Ω}
    [IsFiniteMeasure μ]
    {ℱ : Filtration ℕ m0}
    {a b : ℝ} {f : ℕ → Ω → ℝ}
    (hf : Submartingale f ℱ μ) (hab : a < b) :
    Tendsto (fun N => ∫ ω, (upcrossingsBefore a b f N ω : ℝ) ∂μ)
      atTop
      (nhds (∫ ω, ((upcrossings a b f ω).toReal : ℝ) ∂μ)) := by
  sorry