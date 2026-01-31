import Mathlib

variable {α β γ δ : Type*}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/
lemma Measure.dirac_sum_finite_apply_singleton
    {ι : Type*} [Fintype ι]
    (a : ι → α) (x : α)
    [Fintype {i : ι // a i = x}] :
    (∑ i, Measure.dirac (a i)) {x}
      = (Fintype.card {i : ι // a i = x}) := by
  classical
  sorry