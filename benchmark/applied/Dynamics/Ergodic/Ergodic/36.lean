import Mathlib

/-!
  Additional speculative lemmas about `PreErgodic`, `Ergodic`, `QuasiErgodic`
  and their interaction with other measure-theoretic structures.
-/

open MeasureTheory

lemma Ergodic.invariant_set_pos_ae_univ
    {α : Type*} [MeasurableSpace α]
    {f : α → α} {μ : Measure α}
    [IsProbabilityMeasure μ]
    (hf : Ergodic f μ)
    {s : Set α} (hs : MeasurableSet s)
    (h_inv : f ⁻¹' s = s) (hpos : μ s > 0) :
    s =ᵐ[μ] Set.univ :=
by
  sorry