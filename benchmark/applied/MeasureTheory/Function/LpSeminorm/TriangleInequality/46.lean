import Mathlib

open MeasureTheory

variable {α E : Type*}
variable {m : MeasurableSpace α}
variable {μ : Measure α}
variable [NormedAddCommGroup E] [NormedSpace ℝ E]

/-! ### Scaling and linear maps with eLpNorm -/

lemma integrable_of_MemLp_one {f : α → E} (hf : MemLp f 1 μ) :
    Integrable f μ := by
  sorry