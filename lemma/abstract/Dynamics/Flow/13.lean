import Mathlib


/-
Invariant and forward invariant sets
-/
lemma IsInvariant.image_of_surjective {τ α β}
    (ϕ : τ → α → α) (ψ : τ → β → β) (f : α → β)
    (hf : Function.Surjective f)
    (hconj : ∀ t, Function.Semiconj f (ϕ t) (ψ t))
    {s : Set α} (hs : IsInvariant ϕ s) :
    IsInvariant ψ (f '' s) := by
  -- Unfold the definition of `IsInvariant` for the target
  intro t y hy
  -- Unpack `y ∈ f '' s` to get a preimage point in `s`
  rcases hy with ⟨x, hx, rfl⟩
  -- Use invariance of `s` under `ϕ`
  have hϕx : ϕ t x ∈ s := hs t hx
  -- Now show that `ψ t (f x)` lies in `f '' s`
  refine ⟨ϕ t x, hϕx, ?_⟩
  -- Use semiconjugacy to rewrite `ψ t (f x)` as `f (ϕ t x)`
  have hsem := hconj t x
  -- The equality component comes from semiconjugacy
  simpa [Function.Semiconj, hsem]