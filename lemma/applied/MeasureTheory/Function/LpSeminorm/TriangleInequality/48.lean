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
  -- Use the equivalence between integrability and membership in L¹
  exact (memLp_one_iff_integrable).2 hf