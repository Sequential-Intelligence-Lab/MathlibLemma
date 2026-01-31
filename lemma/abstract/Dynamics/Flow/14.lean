import Mathlib


/-
Invariant and forward invariant sets
-/
lemma IsForwardInvariant.image_of_surjective {τ α β}
    [Preorder τ] [Zero τ]
    (ϕ : τ → α → α) (ψ : τ → β → β) (f : α → β)
    (hf : Function.Surjective f)
    (hconj : ∀ t, Function.Semiconj f (ϕ t) (ψ t))
    {s : Set α} (hs : IsForwardInvariant ϕ s) :
    IsForwardInvariant ψ (f '' s) := by
  -- Unfold IsForwardInvariant: we must show `ψ t` maps `f '' s` into `f '' s`
  intro t ht
  -- Goal: Set.MapsTo (ψ t) (f '' s) (f '' s)
  intro y hy
  -- Decompose y as f x with x ∈ s from membership in the image.
  rcases hy with ⟨x, hx_s, rfl⟩
  -- Use semiconjugacy: ψ t (f x) = f (ϕ t x)
  have hconj' := hconj t x
  -- Use forward invariance of s under ϕ
  have h_maps : Set.MapsTo (ϕ t) s s := hs ht
  have hx_in : ϕ t x ∈ s := h_maps hx_s
  -- Show the right-hand side of the semiconjugacy equality is in the image.
  have : f (ϕ t x) ∈ f '' s := ⟨ϕ t x, hx_in, rfl⟩
  -- Conclude using the equality
  simpa [hconj'] using this