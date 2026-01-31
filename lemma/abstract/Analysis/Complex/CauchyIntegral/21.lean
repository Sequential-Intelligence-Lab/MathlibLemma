import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Complex.mem_sphere_iff {c z : ℂ} {r : ℝ} :
    z ∈ Metric.sphere c r ↔ ‖z - c‖ = r := by
  constructor <;> intro h
  -- Forward direction: If z is in the sphere, then the norm of z - c equals r.
  -- Reverse direction: If the norm of z - c equals r, then z is in the sphere.
  <;> simp_all [Metric.sphere, dist_eq_norm]
  -- Simplify using the definition of the sphere and the distance function.
  <;> linarith