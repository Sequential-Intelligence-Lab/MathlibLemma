import Mathlib

/-
Invariant and forward invariant sets
-/
lemma IsInvariant_comap_subtype_val {τ α} (ϕ : τ → α → α) (s : Set α)
    (hs : IsInvariant ϕ s) :
    IsInvariant (fun t (x : s) => (⟨ϕ t x.1, hs t x.2⟩ : s)) (Set.univ : Set s) := by
  sorry