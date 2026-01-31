import Mathlib

lemma LinearMap.trace_comp_eq_zero_of_image_le_ker
    {R : Type*} [CommRing R]
    {M : Type*} [AddCommGroup M] [Module R M]
    (f g : M →ₗ[R] M) (h : LinearMap.range f ≤ LinearMap.ker g)
    [Module.Free R M] [Module.Finite R M] :
    LinearMap.trace R M (g ∘ₗ f) = 0 := by
  -- First, show that g ∘ₗ f = 0 as a linear map.
  have hf : g ∘ₗ f = 0 := by
    ext m
    -- (g ∘ₗ f) m = g (f m)
    -- f m is in range f
    have hm_in_range : f m ∈ LinearMap.range f := ⟨m, rfl⟩
    -- By the hypothesis h, this lies in ker g
    have hm_in_ker : f m ∈ LinearMap.ker g := h hm_in_range
    -- Being in ker g means g (f m) = 0
    simpa using hm_in_ker
  -- Now use that the trace is linear, so trace of the zero map is zero.
  simpa [hf]