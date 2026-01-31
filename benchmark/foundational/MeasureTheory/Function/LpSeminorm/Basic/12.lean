import Mathlib

open MeasureTheory

lemma eLpNormEssSup_union
    {α E} [MeasurableSpace α] [Zero E] [ENorm E]
    {μ : Measure α} {f : α → E} {s t : Set α}
    [DecidablePred (fun x => x ∈ s ∪ t)]
    [DecidablePred (fun x => x ∈ s)]
    [DecidablePred (fun x => x ∈ t)]
    (hs : MeasurableSet s) (ht : MeasurableSet t) :
    eLpNormEssSup (fun x => if x ∈ s ∪ t then f x else 0) μ
      ≤ max (eLpNormEssSup (fun x => if x ∈ s then f x else 0) μ)
             (eLpNormEssSup (fun x => if x ∈ t then f x else 0) μ) := by
  classical
  sorry