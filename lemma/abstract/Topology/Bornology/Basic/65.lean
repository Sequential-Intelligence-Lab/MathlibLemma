import Mathlib


variable {α β γ ι κ : Type*}

open Set Filter Bornology

lemma Bornology.isCobounded_univ_iff [Bornology α] :
    IsCobounded (univ : Set α) ↔ True := by
  constructor
  · intro _
    trivial
  · intro _
    -- `isCobounded_univ` is a standard lemma in the Bornology API
    simpa using (Bornology.isCobounded_univ (α := α))