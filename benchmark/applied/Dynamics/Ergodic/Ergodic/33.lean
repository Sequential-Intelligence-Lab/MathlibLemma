import Mathlib

open MeasureTheory

/-- If `f` is ergodic and `μ` is a probability measure, then the only invariant functions
in `L^2` with zero mean are zero almost everywhere.

This is stated for a real-valued integrable function; the `L^2` language is informal here. -/
lemma L2_zero_of_invariant_zero_mean
    {α : Type*} [MeasurableSpace α] {μ : Measure α} [IsProbabilityMeasure μ]
    {f : α → α}
    (hf_meas : MeasurePreserving f μ μ)
    (hf : Ergodic f μ)
    {g : α → ℝ} (hg : Integrable g μ)
    (hmean : ∫ x, g x ∂μ = 0)
    (h_invar : ∀ᵐ x ∂μ, g (f x) = g x) :
    g =ᵐ[μ] 0 :=
by
  sorry