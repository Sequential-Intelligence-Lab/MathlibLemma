import Mathlib

open MeasureTheory

lemma eLpNorm'_map_mul_eq {α β E}
    [MeasurableSpace α] [MeasurableSpace β]
    [NormedAddCommGroup E] [NormedSpace ℝ E]
    {μ : Measure α} {ν : Measure β}
    {f : β → E} {g : α → β} {q : ℝ}
    (hg : MeasurePreserving g μ ν) :
    eLpNorm' (f ∘ g) q μ = eLpNorm' f q ν := by
  sorry