import Mathlib

universe u v w x

variable {α β γ X Y Z ι κ : Type*}

variable [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z]
variable {s t u : Set X} {A B : Set (Set X)} {f : X → Y} {g : Y → Z}

open Filter

lemma limUnder_comp_equiv [Nonempty X] {e : X ≃ X}
    (he : Continuous e) (he' : Continuous e.symm)
    {l : Filter α} {g : α → X}
    (h : ∃ x, Tendsto g l (nhds x)) :
    limUnder l (e ∘ g) = e (limUnder l g) := by
  sorry