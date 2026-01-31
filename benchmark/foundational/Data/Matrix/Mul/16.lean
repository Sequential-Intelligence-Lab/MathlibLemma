import Mathlib

lemma dotProduct_pair [NonUnitalNonAssocSemiring α]
    (v w : Fin 2 → α) :
    v ⬝ᵥ w = v ⟨0, by decide⟩ * w ⟨0, by decide⟩
      + v ⟨1, by decide⟩ * w ⟨1, by decide⟩ := by
  sorry
