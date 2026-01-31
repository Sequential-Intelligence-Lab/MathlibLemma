import Mathlib

variable {α β γ δ : Type*}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/
lemma dirac_add_dirac_isFinite (a b : α) :
    IsFiniteMeasure (Measure.dirac a + Measure.dirac b) := by
  refine ⟨?_⟩
  -- We show `(Measure.dirac a + Measure.dirac b) univ < ∞`
  -- by computing the value and using that it is not `⊤`.
  -- `simp` knows how to evaluate `dirac` on `univ` and how to
  -- show that the resulting `ℝ≥0∞` is finite.
  simpa [Measure.add_apply, lt_top_iff_ne_top]