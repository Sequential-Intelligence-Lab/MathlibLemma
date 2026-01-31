import Mathlib


variable {α β γ δ : Type*}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/
lemma Measure.dirac_bind_const {a : α} (μ : Measure β) :
    (Measure.dirac a).bind (fun _ => μ) = μ := by
  -- Prove equality of measures via their values on measurable sets
  ext s hs
  -- Use the bind application lemma
  simp [Measure.bind_apply, hs]  -- reduces to lintegral over a constant