import Mathlib

universe u v w x

variable {α β γ X Y Z ι κ : Type*}

-- 1. Basic structural lemmas about open and closed sets

variable [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z]
variable {s t u : Set X} {A B : Set (Set X)} {f : X → Y} {g : Y → Z}

variable {X₁ X₂ : Type*} [TopologicalSpace X₁] [TopologicalSpace X₂]

lemma isOpen_fst_preimage {s : Set X₁}
    (hs : IsOpen s) :
    IsOpen ((fun p : X₁ × X₂ => p.1) ⁻¹' s) := by
  sorry