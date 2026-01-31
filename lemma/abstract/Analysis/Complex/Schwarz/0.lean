import Mathlib

/-- If the `dslope` of a function is constant on a nonempty open set, then the function is affine
on that set. -/
lemma eqOn_affine_of_dslope_const {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
    {f : ℂ → E} {c : ℂ} {U : Set ℂ} (hU : IsOpen U) (hU_nonempty : U.Nonempty)
    (hU' : c ∈ U)
    (hconst : ∃ C : E, Set.EqOn (dslope f c) (fun _ => C) U) :
    ∃ C : E, Set.EqOn f (fun z => f c + (z - c) • C) U := by
  -- Extract the constant `C` and the fact that `dslope f c` equals `C` on `U`.
  rcases hconst with ⟨C, hC⟩
  refine ⟨C, ?_⟩
  -- Show the equality pointwise on `U`.
  intro z hz
  -- Use the standard identity expressing `f z` via `dslope f c z`.
  have hds : f z = f c + (z - c) • dslope f c z := by
    simpa using (eq_add_smul_dslope (f := f) (c := c) (z := z))
  -- On `U`, `dslope f c z = C`.
  have hCz : dslope f c z = C := hC hz
  -- Substitute `C` for `dslope f c z`.
  simpa [hCz] using hds