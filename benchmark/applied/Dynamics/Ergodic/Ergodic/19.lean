import Mathlib

open MeasureTheory

/-- Ergodicity is preserved under measurable isomorphisms of probability spaces. -/
lemma Ergodic.comp_measurableEquiv_prob
    {α β : Type*} {mα : MeasurableSpace α} {mβ : MeasurableSpace β}
    {μ : Measure α} {ν : Measure β}
    [IsProbabilityMeasure μ] [IsProbabilityMeasure ν]
    (e : α ≃ᵐ β)
    (he : MeasurePreserving e μ ν)
    {f : α → α}
    (hf : Ergodic f μ) :
    Ergodic (fun b => e (f (e.symm b))) ν :=
by
  sorry