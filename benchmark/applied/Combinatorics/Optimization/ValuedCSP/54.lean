import Mathlib

variable {α β γ δ ι κ D C R S : Type*}
variable [DecidableEq α] [DecidableEq β]

namespace List

/-- Local definition of `join` for lists of lists. -/
def join {β : Type _} (L : List (List β)) : List β :=
  L.foldr List.append []

/-! ### Order / lattice related lemmas -/
lemma length_bind (l : List α) (f : α → List β) :
    (join (l.map f)).length = (l.map fun a => (f a).length).sum := by
  sorry

end List