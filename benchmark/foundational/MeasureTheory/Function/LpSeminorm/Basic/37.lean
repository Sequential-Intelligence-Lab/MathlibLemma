import Mathlib

open scoped ENNReal
open MeasureTheory

variable {α E : Type*}

/-- A version with explicit measures on restricted sets. -/
lemma eLpNorm_restrict_subset
    [MeasurableSpace α] {μ : Measure α}
    [NormedAddCommGroup E] [MeasurableSpace E]
    [BorelSpace E] [NormedSpace ℝ E]
    {p : ℝ≥0∞} (f : α → E) {s t : Set α}
    (hst : s ⊆ t) :
    eLpNorm f p (μ.restrict s) ≤ eLpNorm f p (μ.restrict t) := by
  sorry

/-- A dummy lemma showing the typeclass setup compiles. -/
lemma eLpNorm_restrict_subset_trivial
    [MeasureSpace α]
    [NormedAddCommGroup E] [NormedSpace ℝ E]
    [MeasurableSpace E] [BorelSpace E]
    {p : ℝ≥0∞} [Fact (1 ≤ p)]
    (f : α → E) (s t : Set α) (hst : s ⊆ t) :
    eLpNorm f p ≤ eLpNorm f p := by
  sorry