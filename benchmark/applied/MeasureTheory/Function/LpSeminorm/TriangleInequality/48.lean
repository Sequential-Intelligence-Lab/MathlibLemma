import Mathlib

open MeasureTheory

variable {α E : Type*}
variable {m : MeasurableSpace α} {μ : Measure α}
variable [NormedAddCommGroup E] [NormedSpace ℝ E]
variable {f : α → E}

/-! ### Scaling and linear maps with eLpNorm -/

lemma MemLp_of_integrable
    (hf : Integrable f μ) :
    MemLp f 1 μ := by
  sorry