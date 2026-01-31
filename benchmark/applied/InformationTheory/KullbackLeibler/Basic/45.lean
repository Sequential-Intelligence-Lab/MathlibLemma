import Mathlib

open scoped BigOperators
open MeasureTheory

/-- Jensen-type inequality for `klFun` under RN-derivatives. -/
lemma InformationTheory.klFun_Jensen_rnDeriv
    {α : Type*} [MeasurableSpace α]
    (μ ν : Measure α) (hμν : μ ≪ ν)
    [IsFiniteMeasure μ] [IsFiniteMeasure ν] :
    InformationTheory.klFun
      ((μ Set.univ).toReal / (ν Set.univ).toReal)
      ≤ (1 / (ν Set.univ).toReal) *
        (InformationTheory.klDiv μ ν).toReal := by
  sorry