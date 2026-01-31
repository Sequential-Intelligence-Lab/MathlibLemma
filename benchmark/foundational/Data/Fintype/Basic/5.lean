import Mathlib

def Fin.fintype_le (n m : ℕ) (h : n ≤ m) : Fintype (Fin n → Fin m) := by
  classical
  sorry