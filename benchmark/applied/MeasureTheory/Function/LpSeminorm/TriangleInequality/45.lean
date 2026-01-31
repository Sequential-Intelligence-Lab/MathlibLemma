import Mathlib

open scoped BigOperators
open MeasureTheory

variable {α E ι : Type*}
variable [MeasurableSpace α]
variable (μ : Measure α)
variable [NormedAddCommGroup E]
variable [NormedSpace ℝ E]
variable [TopologicalSpace E]
variable [SigmaFinite μ]

/-! ### Scaling and linear maps with `eLpNorm` -/

lemma eLpNormEssSup_finset_sup_le
    {s : Finset ι} {f : ι → α → E} :
    eLpNormEssSup (fun x => ∑ i ∈ s, f i x) μ
      ≤ ∑ i ∈ s, eLpNormEssSup (f i) μ := by
  sorry

/-! ### Relations with Integrable and IntegrableOn -/