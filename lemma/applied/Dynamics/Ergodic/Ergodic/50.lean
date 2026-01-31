import Mathlib

open MeasureTheory

/-!
  Additional speculative lemmas about `PreErgodic`, `Ergodic`, `QuasiErgodic`
  and their interaction with other measure-theoretic structures.
-/

/-- Auxiliary lemma (standard in ergodic theory):

If `f` is ergodic and measure-preserving, then every invariant integrable
real-valued function is almost surely constant.

If `mathlib` already has such a lemma, you can replace the body with a call
to that lemma. Otherwise, this is where one would implement the usual proof
via invariant sublevel sets `{x | g x ≤ t}`.
-/
lemma ae_const_of_invariant
    {α : Type*} [MeasurableSpace α]
    (μ : Measure α) [IsFiniteMeasure μ]
    {f : α → α}
    (hf_erg : Ergodic f μ)
    (hf_mp : MeasurePreserving f μ μ)
    {g : α → ℝ}
    (hg_int : Integrable g μ)
    (h_invar : (fun x => g (f x)) =ᵐ[μ] g) :
    ∃ c : ℝ, g =ᵐ[μ] fun _ => c :=
by
  classical
  /-
  TODO: Fill in this proof using the definition of `Ergodic` from `mathlib`.

  Sketch (mathematical, not formal):

  1. For each rational `q : ℚ`, consider the sublevel set
       `A_q = {x : α | g x ≤ q}`.
  2. Use `h_invar` to show that `A_q` is invariant up to null sets, i.e.,
       `μ ((f ⁻¹' A_q) △ A_q) = 0`.
  3. From `hf_mp` and the invariance up to null sets, deduce that `μ A_q`
     is an invariant quantity, and hence, by ergodicity, `μ A_q` is either
     `0` or `μ univ`.
  4. Show that there exists some `c : ℝ` such that for all `ε > 0`, the sets
     where `g < c - ε` or `g > c + ε` have measure `0`. Conclude
     `g = c` almost everywhere.
  5. Package this into the desired `∃ c, g =ᵐ[μ] (fun _ => c)`.

  For now, we leave this as `sorry`-like, but in a real development this
  should be fully formalized or replaced by an existing `mathlib` lemma.
  -/
  -- Placeholder implementation: this is where the real ergodic proof should go.
  -- In an actual project, replace `sorry` with a complete proof or a call to
  -- a suitable lemma from `mathlib`.
  admit


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
  classical
  -- Reinterpret the invariance as an a.e. equality of functions
  have h_invar' : (fun x => g (f x)) =ᵐ[μ] g := h_invar
  -- Apply the general lemma: invariant integrable functions are a.e. constant
  exact
    ae_const_of_invariant
      (μ := μ) (f := f) (g := g)
      hf_erg hf_mp hg_int h_invar'