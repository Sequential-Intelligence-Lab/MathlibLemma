import Mathlib


/-
The lemmas below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/
-- 15. Kernels of equivariant maps are invariant submodules
lemma Representation.subrepresentation_ker
    {k G V W : Type*} [CommSemiring k] [Monoid G]
    [AddCommMonoid V] [Module k V]
    [AddCommMonoid W] [Module k W]
    (ρV : Representation k G V) (ρW : Representation k G W)
    (f : V →ₗ[k] W)
    (hf : ∀ g, ρW g ∘ₗ f = f ∘ₗ ρV g) :
    ∀ g, LinearMap.ker f ≤ (LinearMap.ker f).comap (ρV g) := by
  intro g x hx
  -- hx : x ∈ LinearMap.ker f
  -- goal : x ∈ (LinearMap.ker f).comap (ρV g)
  change (ρV g x) ∈ LinearMap.ker f
  change f (ρV g x) = 0
  -- extract f x = 0 from hx
  have hx' : f x = 0 := by
    simpa [LinearMap.mem_ker] using hx
  -- use equivariance to relate f (ρV g x) and ρW g (f x)
  have h' : ρW g (f x) = f (ρV g x) := by
    -- apply both sides of hf g to x
    have h := congrArg (fun (T : V →ₗ[k] W) => T x) (hf g)
    simpa [LinearMap.comp_apply] using h
  have h'' : f (ρV g x) = ρW g (f x) := h'.symm
  -- now rewrite using f x = 0 and map_zero
  calc
    f (ρV g x)
        = ρW g (f x) := h''
    _   = ρW g 0 := by simpa [hx']
    _   = 0 := by
      simpa using (LinearMap.map_zero (ρW g))