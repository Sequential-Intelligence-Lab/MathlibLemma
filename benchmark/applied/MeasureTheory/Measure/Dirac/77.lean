import Mathlib

variable {α β γ δ : Type*}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/
lemma Measure.dirac_ae_eq_of_inducing
    [TopologicalSpace α] [TopologicalSpace β]
    {f : α → β} (a : α) :
    (fun x => f x) =ᵐ[Measure.dirac a] fun _ => f a := by
  sorry