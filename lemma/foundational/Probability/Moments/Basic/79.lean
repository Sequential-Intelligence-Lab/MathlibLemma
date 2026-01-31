import Mathlib

open scoped BigOperators
open MeasureTheory

/-! ### Brainstormed lemmas about `moment` -/
lemma chernoff_upper_tail_prob
    {Ω : Type*} {m : MeasurableSpace Ω} (μ : Measure Ω)
    [IsFiniteMeasure μ]
    {X : Ω → ℝ} (ε t : ℝ) (ht : 0 ≤ t)
    (h_int : Integrable (fun ω ↦ Real.exp (t * X ω)) μ) :
    (μ.real) {ω | ε ≤ X ω} ≤
      Real.exp (-t * ε + ProbabilityTheory.cgf X μ t) := by
  classical
  /- The detailed proof uses Markov's inequality and the definition
     of `ProbabilityTheory.cgf`. Providing a fully expanded,
     compilation-ready proof requires precise access to the
     `mathlib` API (in particular, the exact names and statements of
     the Markov inequality and the characterization of `cgf`), which
     is not available in this context.

     The intended mathematical argument is:

     1. For `t ≥ 0`, the sets coincide:
          {ω | ε ≤ X ω} =
          {ω | Real.exp (t * ε) ≤ Real.exp (t * X ω)}.
     2. Apply Markov's inequality to the nonnegative function
          f ω = Real.exp (t * X ω)
        at level a = Real.exp (t * ε), yielding
          (μ.real) {ω | Real.exp (t * ε) ≤ f ω}
          ≤ Real.exp (-t * ε) * ∫ ω, f ω ∂μ.
     3. By definition of `ProbabilityTheory.cgf`, we have
          Real.exp (ProbabilityTheory.cgf X μ t)
          = ∫ ω, Real.exp (t * X ω) ∂μ.
        Hence
          Real.exp (-t * ε) * ∫ ω, Real.exp (t * X ω) ∂μ
          = Real.exp (-t * ε + ProbabilityTheory.cgf X μ t).
     4. Combining these gives the desired inequality.
  -/
  sorry