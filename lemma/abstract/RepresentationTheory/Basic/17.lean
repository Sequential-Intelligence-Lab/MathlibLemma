import Mathlib


/-
The lemmas below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/
-- 18. Quotient representation from invariant kernel
lemma Representation.quotient_of_range
    {k G V W : Type*} [CommRing k] [Monoid G]
    [AddCommGroup V] [Module k V]
    [AddCommGroup W] [Module k W]
    (ρV : Representation k G V) (ρW : Representation k G W)
    (f : V →ₗ[k] W)
    (hf : ∀ g, ρW g ∘ₗ f = f ∘ₗ ρV g) :
    ∀ g, LinearMap.range f ≤ (LinearMap.range f).comap (ρW g) := by
  intro g
  -- We want: range f ≤ comap (ρW g)
  intro w hw
  -- Unfold the definition of membership in the comap:
  change ρW g w ∈ LinearMap.range f
  -- Since w ∈ range f, there exists v with w = f v
  rcases LinearMap.mem_range.mp hw with ⟨v, rfl⟩
  -- Now show ρW g (f v) is in the range of f
  refine LinearMap.mem_range.mpr ?_
  -- Use the intertwining relation hf g evaluated at v
  have h := hf g
  have hv := congrArg (fun (φ : V →ₗ[k] W) => φ v) h
  -- Simplify the composition applied to v
  -- (ρW g ∘ₗ f) v = ρW g (f v), (f ∘ₗ ρV g) v = f (ρV g v)
  simp [LinearMap.comp_apply] at hv
  -- From hv : ρW g (f v) = f (ρV g v), we get the desired witness
  refine ⟨ρV g v, ?_⟩
  exact hv.symm