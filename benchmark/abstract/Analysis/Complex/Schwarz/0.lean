import Mathlib

/-- If the `dslope` of a function is constant on a nonempty open set, then the function is affine
on that set. -/
lemma eqOn_affine_of_dslope_const {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
    {f : ℂ → E} {c : ℂ} {U : Set ℂ} (hU : IsOpen U) (hU_nonempty : U.Nonempty)
    (hU' : c ∈ U)
    (hconst : ∃ C : E, Set.EqOn (dslope f c) (fun _ => C) U) :
    ∃ C : E, Set.EqOn f (fun z => f c + (z - c) • C) U := by
  sorry
