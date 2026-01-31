import Mathlib

open MeasureTheory

lemma measurable_upcrossings'
    {Ω} {m0 : MeasurableSpace Ω}
    (ℱ : Filtration ℕ m0)
    {a b : ℝ} {f : ℕ → Ω → ℝ}
    (hf : Adapted ℱ f) :
    Measurable (upcrossings a b f) := by
  sorry