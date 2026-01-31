import Mathlib


variable {α β γ δ ι κ D C R S : Type*}
variable [DecidableEq α] [DecidableEq β]

/-! ### Order / lattice related lemmas -/
lemma sum_rows_eq_sum_cols
    [AddCommMonoid β] {m n : ℕ} (f : Fin m → Fin n → β) :
    (Finset.univ : Finset (Fin m)).sum
        (fun i => (Finset.univ : Finset (Fin n)).sum (fun j => f i j)) =
    (Finset.univ : Finset (Fin n)).sum
        (fun j => (Finset.univ : Finset (Fin m)).sum (fun i => f i j)) := by
  exact
    Finset.sum_comm
      (s := (Finset.univ : Finset (Fin m)))
      (t := (Finset.univ : Finset (Fin n)))
      (f := fun i j => f i j)