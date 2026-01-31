import Mathlib


/-
The lemmas below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/
-- 10. Pulling back a subrepresentation along a linear isomorphism
lemma Representation.subrepresentation_congr
    {k G V W : Type*} [CommSemiring k] [Monoid G]
    [AddCommMonoid V] [Module k V] [AddCommMonoid W] [Module k W]
    (ρV : Representation k G V) (ρW : Representation k G W)
    (e : V ≃ₗ[k] W)
    (h : ∀ g, e ∘ₗ ρV g = ρW g ∘ₗ e)
    (U : Submodule k V)
    (hU : ∀ g, U ≤ U.comap (ρV g)) :
    ∃ U' : Submodule k W,
      (∀ g, U' ≤ U'.comap (ρW g)) ∧
      (U.map e = U') := by
  classical
  refine ⟨U.map e, ?_, rfl⟩
  intro g
  -- We need: U.map e ≤ (U.map e).comap (ρW g)
  intro w hw
  -- unfolding comap: membership means ρW g w ∈ U.map e
  change ρW g w ∈ U.map e
  -- w ∈ U.map e, so w = e v for some v ∈ U
  rcases hw with ⟨v, hvU, rfl⟩
  -- Now we need: ρW g (e v) ∈ U.map e
  -- Since U is stable under ρV g, ρV g v ∈ U
  have hv' : ρV g v ∈ U := hU g hvU
  -- And e intertwines ρV g and ρW g
  refine ⟨ρV g v, hv', ?_⟩
  -- Show e (ρV g v) = ρW g (e v)
  have := congrArg (fun f => f v) (h g)
  -- h g : e ∘ₗ ρV g = ρW g ∘ₗ e
  -- Apply both sides to v
  simpa [LinearMap.comp_apply] using this