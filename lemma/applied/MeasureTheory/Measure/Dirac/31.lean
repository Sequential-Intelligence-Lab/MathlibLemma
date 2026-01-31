import Mathlib


variable {α β γ δ : Type*}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]
variable [MeasurableSingletonClass α]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/
lemma Measure.dirac_integral_eq_eval_real
    {a : α} {f : α → ℝ} (hf : Measurable f) :
    ∫ x, f x ∂Measure.dirac a = f a := by
  -- `hf` is not needed by `integral_dirac`, but we keep it in the statement.
  simpa using (MeasureTheory.integral_dirac (f := f) (a := a))