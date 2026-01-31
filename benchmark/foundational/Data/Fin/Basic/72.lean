import Mathlib

def Fin.pred_orderIso (n : ℕ) :
    Fin n ≃o {i : Fin (n + 1) // i ≠ Fin.last n} := by
  sorry