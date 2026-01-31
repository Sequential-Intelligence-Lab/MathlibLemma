import Mathlib

-- 10. Stopping a process at the zero stopping time yields the initial value.
lemma stoppedProcess_at_zero
  {Ω β : Type*} {m : MeasurableSpace Ω}
  (u : ℕ → Ω → β) :
  MeasureTheory.stoppedProcess u (fun _ => (0 : ℕ∞)) =
    fun _ ω => u 0 ω := by
  sorry
