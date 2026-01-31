import Mathlib

lemma Fin.succ_lt_last_iff {n : ℕ} {i : Fin n} :
    (i.succ : Fin (n + 1)) < Fin.last n ↔
      (i.castSucc : Fin (n + 1)) < Fin.last n := by
  -- This lemma is actually false in general.
  -- Counterexample: take n = 3, i = ⟨2, by decide⟩.
  -- Then:
  --   (i.succ : Fin 4) has value 3, so (i.succ) < Fin.last 3 is 3 < 3, i.e. False.
  --   (i.castSucc : Fin 4) has value 2, so (i.castSucc) < Fin.last 3 is 2 < 3, i.e. True.
  --
  -- Thus the equivalence does not hold, so this statement cannot be proven.
  --
  -- There is no valid Lean proof term for a false statement, so this `sorry`
  -- cannot be replaced by a real proof without changing the lemma statement.
  admit