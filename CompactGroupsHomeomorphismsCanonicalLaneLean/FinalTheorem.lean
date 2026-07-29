import canonicalLaneMathlib.AdmissibleClass
import .CompactHomeomorphismGroup

namespace HautevilleHouse
namespace CompactGroupsHomeomorphismsCanonicalLaneLean

def ConstrainedCompactHomeomorphismClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_compact_homeomorphism_endgame (A : AdmissibleClass) :
  ConstrainedCompactHomeomorphismClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CompactGroupsHomeomorphismsCanonicalLaneLean
end HautevilleHouse