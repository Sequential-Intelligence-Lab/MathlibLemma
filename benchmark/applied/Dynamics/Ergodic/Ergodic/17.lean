import Mathlib

open MeasureTheory

/-!
  Additional speculative lemmas about `PreErgodic`, `Ergodic`, `QuasiErgodic`
  and their interaction with other measure-theoretic structures.
-/

/-- A quasi-ergodic map with a quasi-invariant probability measure has no
nontrivial almost invariant measurable partition into two sets. -/
lemma QuasiErgodic.no_nontrivial_ae_invariant_partition
    {α : Type*} {mα : MeasurableSpace α}
    {f : α → α} {μ : Measure α} [IsProbabilityMeasure μ]
    (hq : QuasiErgodic f μ)
    {s : Set α} (hs : MeasurableSet s)
    (h_ae_inv : f ⁻¹' s =ᵐ[μ] s)
    (hpos : μ s ≠ 0) (hpos_compl : μ sᶜ ≠ 0) :
    False :=
by
  sorry