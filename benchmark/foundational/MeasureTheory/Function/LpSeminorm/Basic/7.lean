import Mathlib

open scoped MeasureTheory

lemma eLpNorm'_eq_of_eq_on
    {α E} [MeasurableSpace α] [SeminormedAddCommGroup E]
    {μ : MeasureTheory.Measure α} {f g : α → E} {q : ℝ} {s : Set α}
    (hset : μ sᶜ = 0) (hfg : ∀ x ∈ s, f x = g x) :
    MeasureTheory.eLpNorm' f q μ = MeasureTheory.eLpNorm' g q μ := by
  sorry