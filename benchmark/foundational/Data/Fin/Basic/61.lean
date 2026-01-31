import Mathlib

lemma Fin.induction_on' {n : ℕ} {P : Fin (n + 1) → Prop}
    (h0 : P 0)
    (hs : ∀ i : Fin (n + 1), P i → i < Fin.last n → P ⟨i.1 + 1, by
      sorry⟩) :
    ∀ i, P i := by
  sorry