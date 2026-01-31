import Mathlib

lemma Fin.induction_strong {n : ℕ} {P : Fin n → Prop}
    (h0 : ∀ i : Fin n, (∀ j < i, P j) → P i)
    (hs : ∀ i, (∀ j < i, P j) → P i) :
    ∀ i, P i := by
  sorry