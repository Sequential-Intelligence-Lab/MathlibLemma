import Mathlib

universe u v

variable {X Y : Type u}

variable [TopologicalSpace X] [TopologicalSpace Y]
variable {s : Set X} {f : X → Y}

/-- Placeholder structure for an open embedding of `f`. -/
structure MyOpenEmbedding (f : X → Y) : Prop :=
  (trivial : True)

lemma isOpen_image_openEmbedding (hf : MyOpenEmbedding f) (hs : IsOpen s) :
    IsOpen (f '' s) := by
  sorry