import Mathlib

lemma Fin.succ_ne_self {n : ℕ} {i : Fin n} : i.succ ≠ i.castSucc := by
  intro h
  have h' : i.1.succ = i.1 := by
    have := congrArg Fin.val h
    simpa using this
  exact Nat.succ_ne_self _ h'