import Mathlib


/-
Invariant and forward invariant sets
-/
lemma Flow.image_eq_preimage_homeomorph
    {τ α} [AddCommGroup τ] [TopologicalSpace τ] [IsTopologicalAddGroup τ]
    [TopologicalSpace α]
    (ϕ : Flow τ α) (t : τ) (s : Set α) :
    ϕ t '' s = (ϕ.toHomeomorph t) '' s := by
  -- Show that the underlying functions are definitionally equal
  have hfun : (ϕ t : α → α) = (ϕ.toHomeomorph t : α → α) := by
    funext x
    rfl
  -- Rewrite using the function equality
  simpa [hfun]