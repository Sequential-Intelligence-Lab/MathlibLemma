import Mathlib


variable {α β γ δ : Type*}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/
lemma Measure.dirac_restrict_of_mem {a : α} {s : Set α}
    (hs : MeasurableSet s) (h : a ∈ s) :
    (Measure.dirac a).restrict s = Measure.dirac a := by
  classical
  -- Use measure extensionality on measurable sets
  ext t ht
  -- Case split on whether `a ∈ t`
  by_cases hat : a ∈ t
  · -- In this case, `a ∈ t ∩ s`
    have h' : a ∈ t ∩ s := ⟨hat, h⟩
    -- Evaluate both sides via `restrict_apply` and `dirac_apply`
    simp [Measure.restrict_apply, ht, hs, Measure.dirac_apply, hat, h']
  · -- In this case, `a ∉ t ∩ s`
    have h' : a ∉ t ∩ s := by
      intro hts
      exact hat hts.1
    -- Again simplify both sides
    simp [Measure.restrict_apply, ht, hs, Measure.dirac_apply, hat, h']