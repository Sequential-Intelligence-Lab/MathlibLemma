import Mathlib

def Finite.trunc_of_exists {α : Type*} [Fintype α] (P : α → Prop)
    [DecidablePred P] (h : ∃ a, P a) :
    Trunc {a // P a} := by
  sorry