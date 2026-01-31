import Mathlib


universe u v w x

variable {α β γ X Y Z ι κ : Type*}

-- 1. Basic structural lemmas about open and closed sets

variable [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z]
variable {s t u : Set X} {A B : Set (Set X)} {f : X → Y} {g : Y → Z}

lemma isOpen_sigma_mk {ι : Type*} [TopologicalSpace ι] {X : ι → Type*}
    [∀ i, TopologicalSpace (X i)] {s : Set ι} {t : ∀ i, Set (X i)}
    (hs : IsOpen s) (ht : ∀ i, IsOpen (t i)) :
    IsOpen {p : Sigma X | p.1 ∈ s ∧ p.2 ∈ t p.1} := by
  sorry