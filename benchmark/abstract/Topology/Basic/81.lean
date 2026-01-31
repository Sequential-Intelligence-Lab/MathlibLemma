import Mathlib

universe u v w x

variable {α β γ X Y Z ι κ : Type*}

variable [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z]
variable {s t u : Set X} {A B : Set (Set X)} {f : X → Y} {g : Y → Z}

lemma isOpen_of_finite_compl_isClosed
    (s : Set X)
    (hs : (sᶜ : Set X).Finite)
    (hsub : ∀ x ∈ sᶜ, IsClosed ({x} : Set X)) :
    IsOpen s := by
  sorry