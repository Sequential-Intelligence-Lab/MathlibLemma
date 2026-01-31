import Mathlib

noncomputable def Finite.fintype_subtype {α : Type*} [Finite α] (p : α → Prop)
    [DecidablePred p] : Fintype {x // p x} := by
  classical
  sorry