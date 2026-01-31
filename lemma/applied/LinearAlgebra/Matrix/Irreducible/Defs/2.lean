import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


/- In a finite strongly connected quiver, every vertex lies on a directed cycle. -/ 
lemma Quiver.IsSStronglyConnected.exists_cycle_through
    {V : Type*} [Quiver V] [Fintype V] (h : Quiver.IsSStronglyConnected V) (v : V) :
    ∃ p : Quiver.Path v v, 0 < p.length := by 
  sorry