import Mathlib

lemma Fin.sup_univ_eq_last {n : ℕ} :
    sSup (Set.univ : Set (Fin (n + 1))) = Fin.last n := by
  -- Use the general fact that the supremum over `Set.univ` is `⊤`,
  -- then identify `⊤` with `Fin.last n`.
  simpa [Fin.top_eq_last] using (sSup_univ (α := Fin (n + 1)))