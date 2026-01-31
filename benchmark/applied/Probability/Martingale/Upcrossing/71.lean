import Mathlib

open MeasureTheory

lemma Submartingale.expectation_upcrossingsBefore_mono
    {Ω} {m0 : MeasurableSpace Ω} {μ : Measure Ω}
    [IsFiniteMeasure μ]
    {ℱ : Filtration ℕ m0}
    {a b : ℝ} {f : ℕ → Ω → ℝ}
    (hf : Submartingale f ℱ μ) (hab : a < b) :
    Monotone (fun N => ∫ ω, (upcrossingsBefore a b f N ω : ℝ) ∂μ) := by
  sorry