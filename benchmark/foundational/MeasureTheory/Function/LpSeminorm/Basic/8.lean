import Mathlib

open MeasureTheory

lemma eLpNormEssSup_eq_of_eq_on {α E} [MeasurableSpace α] [ENorm E]
    (μ : Measure α) {f g : α → E} {s : Set α}
    (hset : μ sᶜ = 0) (hfg : ∀ x ∈ s, f x = g x) :
    MeasureTheory.eLpNormEssSup f (μ := μ) =
      MeasureTheory.eLpNormEssSup g (μ := μ) := by
  sorry