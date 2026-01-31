import Mathlib

open MeasureTheory

variable {α : Type*} [MeasurableSpace α]
variable {μ : Measure α}
variable {f : α → α}

/-!
  Additional speculative lemmas about `PreErgodic`, `Ergodic`, `QuasiErgodic`
  and their interaction with other measure-theoretic structures.
-/

/-- If `f` is ergodic and `s` is an invariant set of full measure, then
the restriction of `μ` to `s` is ergodic. -/
lemma Ergodic.restrict_of_invariant_ae
    (hf : Ergodic f μ)
    {s : Set α} (hs : MeasurableSet s)
    (h_inv : f ⁻¹' s = s) (hfull : μ sᶜ = 0) :
    Ergodic f (μ.restrict s) :=
by
  sorry