import Mathlib

universe u v w x

variable {α β γ X Y Z ι κ : Type*}

-- 1. Basic structural lemmas about open and closed sets

variable [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z]
variable {s t u : Set X} {A B : Set (Set X)} {f : X → Y} {g : Y → Z}

-- New variables and instances needed for the lemma below
variable {X₁ X₂ : Type*} [TopologicalSpace X₁] [TopologicalSpace X₂]
-- The product `X₁ × X₂` automatically has a TopologicalSpace instance from Mathlib

lemma isOpen_snd_preimage {t : Set X₂}
    (ht : IsOpen t) :
    IsOpen ((fun p : X₁ × X₂ => p.2) ⁻¹' t) := by
  sorry