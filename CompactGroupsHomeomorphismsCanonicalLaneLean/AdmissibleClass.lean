import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CompactGroupsHomeomorphismsCanonicalLaneLean.CompactGroupStructure
import HautevilleHouse.CompactGroupsHomeomorphismsCanonicalLaneLean.HomeomorphismGroup

namespace HautevilleHouse
namespace CompactGroupsHomeomorphismsCanonicalLaneLean

structure AdmissibleClass (G : Type u) [TopologicalSpace G] where
  compactGroup : CompactGroupStructure G
  homeomorphismGroup : HomeomorphismGroupData G
  bridgeCondition : CompactGroupClosed G compactGroup
  gateCondition : HomeomorphismGroupClosed G homeomorphismGroup

def bridgeClosed (A : AdmissibleClass G) : Prop :=
  CompactGroupClosed G A.compactGroup

theorem bridge_from_admissible_class (A : AdmissibleClass G) : bridgeClosed A :=
  A.bridgeCondition

def gateClosed (A : AdmissibleClass G) : Prop :=
  HomeomorphismGroupClosed G A.homeomorphismGroup

theorem gate_from_admissible_class (A : AdmissibleClass G) : gateClosed A :=
  A.gateCondition

def ConstrainedCompactClosure (A : AdmissibleClass G) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_compact_endgame (A : AdmissibleClass G) : ConstrainedCompactClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CompactGroupsHomeomorphismsCanonicalLaneLean
end HautevilleHouse