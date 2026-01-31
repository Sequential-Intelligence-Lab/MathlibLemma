import Mathlib

variable {α β γ ι κ : Type*}

open Set Filter Bornology

lemma Bornology.isBounded_image_const [Bornology β] (b : β) :
    IsBounded (Set.range (fun _ : α => b)) := by
  sorry