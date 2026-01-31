import Mathlib


/-
The lemmas below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/
-- 16. Image of equivariant map is invariant
lemma Representation.subrepresentation_range
    {k G V W : Type*} [CommSemiring k] [Monoid G]
    [AddCommMonoid V] [Module k V]
    [AddCommMonoid W] [Module k W]
    (ρV : Representation k G V) (ρW : Representation k G W)
    (f : V →ₗ[k] W)
    (hf : ∀ g, ρW g ∘ₗ f = f ∘ₗ ρV g) :
    ∀ g, LinearMap.range f ≤ (LinearMap.range f).comap (ρW g) := by
  intro g x hx
  -- Unfold membership in the comap
  change ρW g x ∈ LinearMap.range f
  -- Use that x is in the range of f
  rcases hx with ⟨v, rfl⟩
  -- From equivariance, get equality on v
  have hgv : ρW g (f v) = f (ρV g v) := by
    -- apply hf g to the argument v
    have := congrArg (fun (L : V →ₗ[k] W) => L v) (hf g)
    -- simplify the composed maps on both sides
    simpa [LinearMap.comp_apply] using this
  -- Rewrite using hgv, so we see an element of the range directly
  simpa [hgv] using (show f (ρV g v) ∈ LinearMap.range f from ⟨ρV g v, rfl⟩)