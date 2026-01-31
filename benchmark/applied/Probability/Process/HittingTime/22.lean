import Mathlib

open MeasureTheory

variable {Ω β ι : Type*} {m : MeasurableSpace Ω}

lemma hittingAfter_isStoppingTime_lt
    [Preorder ι] [Countable ι] [InfSet ι]
    [TopologicalSpace β] [MeasurableSpace β] [BorelSpace β]
    {f : Filtration ι m} {u : ι → Ω → β}
    {s : Set β} {n : ι} {i : WithTop ι}
    (hu : Adapted f u) (hs : MeasurableSet s) :
    MeasurableSet {ω | hittingAfter u s n ω < i} := by
  sorry