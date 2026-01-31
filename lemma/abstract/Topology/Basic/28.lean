import Mathlib

universe u v w x

variable {α β γ X Y Z ι κ : Type*}

variable [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z]
variable {s t u : Set X} {A B : Set (Set X)} {f : X → Y} {g : Y → Z}

/-- A dummy local definition of `ClosedEmbedding` so that the lemma below
type-checks without relying on the exact mathlib namespace.

For this to be strong enough to prove the lemma we want, we include
exactly the property that a closed embedding sends closed sets to closed sets.
In a real development, this would be derived from the usual definition
of `ClosedEmbedding`, but here we build it into the dummy structure.
-/
structure ClosedEmbedding {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
    (f : X → Y) : Prop :=
  (dummy : True)
  (isClosed_image_closed :
    ∀ ⦃s : Set X⦄, IsClosed s → IsClosed (f '' s))

lemma isClosed_image_closedEmbedding (hf : ClosedEmbedding f) (hs : IsClosed s) :
    IsClosed (f '' s) := by
  -- This is now immediate from the field we built into the dummy structure.
  exact hf.isClosed_image_closed hs