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
  induction' l with a l ih
  · -- base case: l = []
    simp [join]
  · -- inductive step: l = a :: l
    -- Rewrite induction hypothesis in terms of `foldr`
    simp [join] at ih
    -- Now simplify the goal using the definition of `join`,
    -- list append length, the structure of `map`/`sum`, and `ih`.
    simp [join, List.length_append, ih]

end List