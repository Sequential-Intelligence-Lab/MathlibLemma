import Mathlib

/-! ### Brainstormed lemmas about `moment` -/

open ProbabilityTheory
open MeasureTheory

-- Version where the measure is an explicit argument to `cgf`
lemma cgf_map_identDistrib
    {Ω Ω' : Type*} {m : MeasurableSpace Ω} {m' : MeasurableSpace Ω'}
    {μ : Measure Ω} {μ' : Measure Ω'}
    {X : Ω → ℝ} {Y : Ω' → ℝ}
    (h : ProbabilityTheory.IdentDistrib X Y μ μ') :
    ProbabilityTheory.cgf X μ = ProbabilityTheory.cgf Y μ' := by
  sorry

-- Version using `MeasureSpace` and `volume` as the measure
lemma cgf_map_identDistrib_volume
    {Ω Ω' : Type*} [MeasureSpace Ω] [MeasureSpace Ω']
    {X : Ω → ℝ} {Y : Ω' → ℝ}
    (h : ProbabilityTheory.IdentDistrib X Y volume volume) :
    ProbabilityTheory.cgf X volume = ProbabilityTheory.cgf Y volume := by
  sorry