import Mathlib

lemma Filter.pi_le_iff {ι : Type*} {α : ι → Type*}
    (F : ∀ i, Filter (α i)) (G : Filter (∀ i, α i)) :
    G ≤ Filter.pi F ↔ ∀ i, Filter.map (fun f : (∀ i, α i) => f i) G ≤ F i := by
  sorry
