import Mathlib

open MeasureTheory
open scoped ENNReal ENorm

lemma Lp.memLp_enorm_coe
    {α E : Type*} {m : MeasurableSpace α} {p : ℝ≥0∞}
    {μ : Measure α} [NormedAddCommGroup E] [ContinuousENorm E]
    (f : Lp E p μ) :
    MemLp (fun x => ‖f x‖ₑ) p μ := by
  sorry