import Mathlib

universe u v w

lemma diag_finset_sum
  {α : Type u} {ι : Type v} {n : Type w}
  [Fintype n] [DecidableEq n] [AddCommMonoid α]
  (s : Finset ι) (f : ι → Matrix n n α) :
  Matrix.diag (∑ i ∈ s, f i) = ∑ i ∈ s, Matrix.diag (f i) := by
  sorry