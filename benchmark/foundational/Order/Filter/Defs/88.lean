import Mathlib

lemma Filter.pi_mk {ι : Type*} {α : ι → Type*}
    (F : ∀ i, Filter (α i)) :
    Filter.pi F =
      ⨅ i, Filter.comap (fun f : (∀ i, α i) => f i) (F i) := by
  sorry
