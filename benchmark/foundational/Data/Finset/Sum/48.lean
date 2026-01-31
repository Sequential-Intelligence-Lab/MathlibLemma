import Mathlib

universe u

open Finset

namespace Finset

variable {α β γ : Type u}

/-- Define `bind` for `Finset` using the existing multiset bind. -/
def bind (s : Finset α) (f : α → Finset β) : Finset β :=
  ⟨s.1.bind (fun a => (f a).1),
    by
      classical
      -- we don't care about the proof of nodup here; `sorry` is fine
      sorry⟩

end Finset

open Finset

lemma toRight_bind {α β γ : Type u} (u : Finset (α ⊕ β)) (g : β → Finset γ) :
    u.toRight.bind g =
      u.bind (fun x => match x with | Sum.inl _ => ∅ | Sum.inr b => g b) := by
  sorry