import Mathlib

lemma Filter.eventually_atTop_of_forall {α} [Preorder α] [IsDirected α (· ≤ ·)]
    {p : α → Prop} (h : ∀ a, p a) :
    (∀ᶠ a in Filter.atTop, p a) := by
  -- Unfold the `Eventually` / `∀ᶠ` notation to a set-membership statement
  change {a | p a} ∈ (Filter.atTop : Filter α)
  -- Show that this set is the whole universe
  have hset : {a | p a} = (Set.univ : Set α) := by
    ext a
    constructor
    · intro _; trivial
    · intro _; exact h a
  -- Use that `Set.univ` is in every filter
  simpa [hset] using
    (Filter.univ_mem : (Set.univ : Set α) ∈ (Filter.atTop : Filter α))