import Mathlib

lemma dotProduct_one_right [Fintype n] [MulOneClass α] [AddCommMonoid α]
    (v : n → α) :
    v ⬝ᵥ (fun _ => (1 : α)) = ∑ i, v i := by
  sorry
