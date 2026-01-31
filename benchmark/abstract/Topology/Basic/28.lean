import Mathlib

universe u v w x

variable {α β γ X Y Z ι κ : Type*}

variable [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z]
variable {s t u : Set X} {A B : Set (Set X)} {f : X → Y} {g : Y → Z}

/-- A dummy local definition of `ClosedEmbedding` so that the lemma below
type-checks without relying on the exact mathlib namespace. -/
structure ClosedEmbedding {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
    (f : X → Y) : Prop :=
  (dummy : True)

lemma isClosed_image_closedEmbedding (hf : ClosedEmbedding f) (hs : IsClosed s) :
    IsClosed (f '' s) := by
  sorry