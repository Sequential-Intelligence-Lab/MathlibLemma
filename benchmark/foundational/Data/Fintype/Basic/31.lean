import Mathlib

noncomputable def Finite.fintype_pi {ι : Type*} [Finite ι] (α : ι → Type*)
    [∀ i, Fintype (α i)] : Fintype (∀ i, α i) := by
  classical
  sorry