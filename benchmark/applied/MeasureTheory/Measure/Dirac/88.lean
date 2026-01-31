import Mathlib


variable {α β γ δ : Type*}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/
lemma Measure.dirac_ae_eq_const
    {a : α} {f : α → β} :
    f =ᵐ[Measure.dirac a] fun _ => f a := by
  sorry
