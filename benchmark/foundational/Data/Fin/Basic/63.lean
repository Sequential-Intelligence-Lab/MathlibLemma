import Mathlib

def Fin.rec_bot_top {n : ℕ} {C : Fin (n + 2) → Sort _}
    (h0 : C 0)
    (hl : C (Fin.last (n + 1)))
    (hs : ∀ i : Fin n, C (Fin.castSucc i.succ)) :
    ∀ i : Fin (n + 2), C i :=
by
  sorry