import Mathlib

/-- For a quiver on `n`, the set of indices reachable from a fixed index is closed under
composition of paths. (Stub version: not proved.) -/
lemma Matrix.toQuiver_reachable_closed
    {n R : Type*} [Ring R] [LinearOrder R]
    (A : Matrix n n R) (i : n) [Quiver n] :
    ∀ j k,
      Nonempty (Quiver.Path i j) →
      Nonempty (Quiver.Path j k) →
      Nonempty (Quiver.Path i k) := by
  intro j k hij hjk
  rcases hij with ⟨p⟩
  rcases hjk with ⟨q⟩
  exact ⟨Quiver.Path.comp p q⟩