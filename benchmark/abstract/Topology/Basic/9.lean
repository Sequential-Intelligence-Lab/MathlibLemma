import Mathlib


universe u v w x

variable {α β γ X Y Z ι κ : Type*}

-- 1. Basic structural lemmas about open and closed sets

variable [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z]
variable {s t u : Set X} {A B : Set (Set X)} {f : X → Y} {g : Y → Z}
lemma isOpen_biUnion_of_directed {ι} [Preorder ι] {s : ι → Set X}
    (hd : Directed (· ⊆ ·) s) (h : ∀ i, IsOpen (s i)) :
    IsOpen (⋃ i, s i) := by
  sorry
