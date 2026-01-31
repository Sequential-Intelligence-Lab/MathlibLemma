import Mathlib

noncomputable instance Fin.subtype_fintype (n : ℕ) (p : Fin n → Prop) [DecidablePred p] :
    Fintype {i : Fin n // p i} :=
  sorry