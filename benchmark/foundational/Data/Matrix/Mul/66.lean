import Mathlib

lemma dotProduct_one_left [Fintype n] [MulOneClass α] [AddCommMonoid α]
    (v : n → α) :
    (fun _ => (1 : α)) ⬝ᵥ v = ∑ i, v i := by
  sorry
