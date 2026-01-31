import Mathlib

open Finset

lemma Finset.univ_fin_eq_biUnion_singleton (n : ℕ) :
    (Finset.univ : Finset (Fin n)) =
      (Finset.range n).biUnion
        (fun k => ({⟨k, by
          have hk : k < n := by
            -- placeholder proof, leave as sorry
            sorry
          exact hk
        ⟩} : Finset (Fin n))) := by
  sorry