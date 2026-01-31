import Mathlib

open MeasureTheory

variable {α E : Type*}
variable {m : MeasurableSpace α}
variable {μ : Measure α}
variable [NormedAddCommGroup E] [NormedSpace ℝ E]

/-! ### Scaling and linear maps with eLpNorm -/

lemma integrable_of_MemLp_one {f : α → E} (hf : MemLp f 1 μ) :
    Integrable f μ := by
  -- Use the standard equivalence between `MemLp f 1 μ` and `Integrable f μ`
  simpa [memLp_one_iff_integrable] using hf