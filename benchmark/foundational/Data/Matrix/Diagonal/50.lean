import Mathlib

lemma diagonal_finset_sum
    {α ι n : Type _} [AddCommMonoid α] [DecidableEq ι] [DecidableEq n]
    (s : Finset ι) (f : ι → n → α) :
    Matrix.diagonal (fun i => Finset.sum s (fun j => f j i)) =
      Finset.sum s (fun j => Matrix.diagonal (f j)) := by
  sorry