import Mathlib


variable {α β γ δ : Type*}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/
lemma Measure.dirac_smul_eq_dirac_iff {a : α} {c : ℝ≥0∞} :
    c • Measure.dirac a = Measure.dirac a ↔ c = 1 := by
  constructor
  · intro h
    -- Evaluate both sides on the set `{a}`
    have h' := congrArg (fun μ : Measure α => μ {a}) h
    -- Use the formulas for `smul` on measures and for `dirac` on `{a}`
    -- `Measure.smul_apply` says `(c • μ) s = c * μ s`
    -- `Measure.dirac_apply_of_mem` with `mem_singleton a` gives `dirac a {a} = 1`
    simp [Measure.smul_apply, Measure.dirac_apply_of_mem (mem_singleton a)] at h'
    -- Now `h'` is `c = 1`
    exact h'
  · intro hc
    -- If `c = 1`, then `c • μ = μ`
    simpa [hc]