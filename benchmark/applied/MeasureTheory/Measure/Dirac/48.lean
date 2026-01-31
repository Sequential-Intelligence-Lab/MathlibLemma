import Mathlib


variable {α β γ δ : Type*}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/
lemma Measure.dirac_sum_finite {ι : Type*} [Fintype ι] (a : ι → α) :
    (∑ i, Measure.dirac (a i)) (Set.univ : Set α) = (Fintype.card ι) := by
  sorry
