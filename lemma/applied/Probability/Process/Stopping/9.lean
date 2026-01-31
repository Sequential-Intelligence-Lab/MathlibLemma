import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma stoppedProcess_at_zero
  {Ω β : Type*} {m : MeasurableSpace Ω}
  (u : ℕ → Ω → β) :
  MeasureTheory.stoppedProcess u (fun _ => (0 : ℕ∞)) =
    fun _ ω => u 0 ω := by
  ext n ω
  -- For each n and ω, we need to show that the stopped process at n equals u_0 ω.
  -- By the definition of the stopped process, we have:
  -- u^τ_n ω = u_{min(n, τ(ω))} ω
  -- Since τ(ω) = 0 for all ω, min(n, 0) = 0.
  -- Therefore, u^τ_n ω = u_0 ω.
  simp [MeasureTheory.stoppedProcess]
  <;> simp [Nat.zero_eq]
  <;> simp [Nat.zero_eq]
  <;> simp [Nat.zero_eq]