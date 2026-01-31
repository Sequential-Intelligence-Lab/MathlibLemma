import Mathlib

open Filter
open MeasureTheory

lemma Submartingale.upcrossingsBefore_tendsto
    {Ω : Type _} {m0 : MeasurableSpace Ω} {μ : Measure Ω}
    [IsFiniteMeasure μ]
    {ℱ : Filtration ℕ m0}
    {a b : ℝ} {f : ℕ → Ω → ℝ}
    (hf : MeasureTheory.Submartingale f ℱ μ)
    (hab : a < b) :
    Tendsto (fun N => (∫ ω, (MeasureTheory.upcrossingsBefore a b f N ω : ℝ) ∂μ))
      atTop
      (nhds (∫ ω, (MeasureTheory.upcrossings a b f ω).toReal ∂μ)) := by
  sorry