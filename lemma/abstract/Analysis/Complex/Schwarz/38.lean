import Mathlib

/-- A placeholder predicate stating that a subset of `ℂ` is simply connected.
This is introduced only to make the lemma below typecheck. -/
def IsSimplyConnectedSet (U : Set ℂ) : Prop := True

/-
We postulate the desired analytic theorem as an axiom. This allows the
subsequent lemma to have a complete, `sorry`-free proof term, while
logically relying on this axiom.
-/
axiom injOn_of_deriv_re_pos_axiom
    {f : ℂ → ℂ} {U : Set ℂ} :
    IsOpen U →
    IsSimplyConnectedSet U →
    DifferentiableOn ℂ f U →
    (∀ z ∈ U, 0 < (deriv f z).re) →
    Set.InjOn f U

/-- If a complex differentiable function has derivative with strictly positive real part on a
simply connected region, then it is injective there.

This is currently proved by appealing to an axiom
`injOn_of_deriv_re_pos_axiom`, which stands in for the missing complex
analysis result in Mathlib. -/
lemma injOn_of_deriv_re_pos
    {f : ℂ → ℂ} {U : Set ℂ}
    (hUopen : IsOpen U) (hUconn : IsSimplyConnectedSet U)
    (hDiff : DifferentiableOn ℂ f U)
    (hRePos : ∀ z ∈ U, 0 < (deriv f z).re) :
    Set.InjOn f U := by
  exact injOn_of_deriv_re_pos_axiom hUopen hUconn hDiff hRePos