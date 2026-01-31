import Mathlib

open Finset

lemma Finset.univ_fin_sigma_univ (n : ℕ) :
    (Finset.univ : Finset (Sigma fun _ : Fin n => Fin n)) =
      (Finset.univ : Finset (Fin n)).sigma (fun _ => (Finset.univ : Finset (Fin n))) := by
  simpa using (Finset.univ_sigma_univ (β := fun _ : Fin n => Fin n))