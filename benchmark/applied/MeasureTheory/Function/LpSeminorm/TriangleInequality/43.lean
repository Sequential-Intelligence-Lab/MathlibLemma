import Mathlib

open MeasureTheory

variable {α E : Type*}
variable [MeasurableSpace α]
variable [NormedAddCommGroup E] [NormedSpace ℝ E]
variable (μ : Measure α)
variable (f g : α → E)

/-! ### Scaling and linear maps with eLpNorm -/

/-- Triangle inequality for the essential-supremum `eLpNormEssSup`. -/
lemma eLpNormEssSup_sub_le :
    eLpNormEssSup (f - g) μ ≤ eLpNormEssSup f μ + eLpNormEssSup g μ := by
  sorry