import Mathlib

open MeasureTheory

/-!
  Additional speculative lemmas about `PreErgodic`, `Ergodic`, `QuasiErgodic`
  and their interaction with other measure-theoretic structures.
-/

/-- If `f` is ergodic and measure-preserving, then every invariant `L^2` function
with finite variance is almost surely constant.

This is a speculative lemma; the proof is omitted.
-/
lemma Ergodic.ae_const_of_L2_invariant_var
    {α : Type*} [MeasurableSpace α]
    (μ : Measure α) [IsFiniteMeasure μ]
    {f : α → α}
    (hf_erg : Ergodic f μ)
    (hf_mp : MeasurePreserving f μ μ)
    {g : α → ℝ}
    (hg_int : Integrable g μ)
    (h_invar : ∀ᵐ x ∂μ, g (f x) = g x)
    (hvar : Integrable (fun x => (g x - ∫ y, g y ∂μ)^2) μ) :
    ∃ c : ℝ, g =ᵐ[μ] fun _ => c :=
by
  sorry