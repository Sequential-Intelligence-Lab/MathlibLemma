import Mathlib

/-
Lemma ideas revolve around:

* `GroupAlgebra.average`: its algebraic properties, interaction with representations,
  tensor products, duals, subrepresentations, quotients.
* `Representation.invariants`: lattice properties, functoriality, compatibility with
  direct sums, tensor products, duals, restriction/induction, quotient representations,
  and categorical properties in `Rep` and `FDRep`.
* `linHom.invariantsEquivRepHom`: naturality, behavior under composition, etc.
* Interaction with other Mathlib structures: `LinearEquiv`, `Submodule`, `Subrepresentation`,
  categorical functors, adjunction properties, traces, characters (where available), etc.

All lemmas below are just statements with `sorry`. They are intended to be nontrivial
(i.e. not immediate from simp-like automation).
-/

universe u v w

variable {k : Type u} {G H : Type v} {V W X : Type w}

/-! ## Lemmas about `GroupAlgebra.average` -/

section Average

variable [CommSemiring k] [Group G] [Fintype G] [Invertible (Fintype.card G : k)]

open MonoidAlgebra GroupAlgebra

lemma averageMap_comp_equivariant
    {V W : Type*}
    [AddCommGroup V] [Module k V]
    [AddCommGroup W] [Module k W]
    (ρ  : Representation k G V)
    (ρW : Representation k G W)
    (f : V →ₗ[k] W)
    (hf : ∀ g, f.comp (ρ g) = (ρW g).comp f) :
    ρW.averageMap.comp f = f.comp ρ.averageMap := by
  classical
  -- Equality of linear maps by pointwise equality
  ext v
  -- Unfold composition and averageMap on both sides
  simp [LinearMap.comp_apply, Representation.averageMap, GroupAlgebra.average] -- reduce to sums
  -- At this point the goal is
  -- ⅟↑(Fintype.card G) • ∑ g, ρW g (f v)
  --   = ⅟↑(Fintype.card G) • ∑ g, f (ρ g v)
  -- so it suffices to show equality of the inner sums.
  have hsum :
      (∑ g : G, ρW g (f v)) = ∑ g : G, f (ρ g v) := by
    refine Finset.sum_congr rfl ?_ 
    intro g _
    -- Use the equivariance condition `hf` pointwise at `v`
    have h := congrArg (fun (m : V →ₗ[k] W) => m v) (hf g)
    -- `h : (f.comp (ρ g)) v = ((ρW g).comp f) v`
    -- Rewrite the compositions to get pointwise equality of actions
    -- `f (ρ g v) = ρW g (f v)`
    -- then flip sides to match the needed direction.
    simpa [LinearMap.comp_apply] using h.symm
  -- Now substitute the equality of sums inside the scalar multiples
  simpa [hsum]

end Average