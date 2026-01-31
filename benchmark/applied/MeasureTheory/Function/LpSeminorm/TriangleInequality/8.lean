import Mathlib

open scoped ENNReal

open MeasureTheory

variable {α E : Type*}
variable [MeasurableSpace α]
variable {μ : Measure α}
variable [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [SigmaFinite μ]
variable {p : ℝ≥0∞} {f : α → E}

/-! ### Scaling and linear maps with eLpNorm -/

lemma eLpNorm_indicator_le (s : Set α)
    (hf : AEStronglyMeasurable f μ)
    (hp : p ≠ 0) (hp_top : p ≠ ∞) :
    eLpNorm (s.indicator f) p μ ≤ eLpNorm f p μ := by
  sorry