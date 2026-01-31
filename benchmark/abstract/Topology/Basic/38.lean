import Mathlib


universe u v w x

variable {α β γ X Y Z ι κ : Type*}

-- 1. Basic structural lemmas about open and closed sets

variable [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z]
variable {s t u : Set X} {A B : Set (Set X)} {f : X → Y} {g : Y → Z}

variable {X₁ X₂ : Type*}

lemma isOpen_prod_mk {s : Set X₁} {t : Set X₂}
    [TopologicalSpace X₁] [TopologicalSpace X₂]
    (hs : IsOpen s) (ht : IsOpen t) :
    IsOpen (s ×ˢ t : Set (X₁ × X₂)) := by
  sorry