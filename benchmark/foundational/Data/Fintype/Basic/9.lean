import Mathlib

open Finset

lemma univ_fin_succ (n : ℕ) :
    (Finset.univ : Finset (Fin (n + 1))) =
      insert 0 ((Finset.univ : Finset (Fin n)).map
        ⟨Fin.succ, Fin.succ_injective (n := n)⟩) := by
  sorry