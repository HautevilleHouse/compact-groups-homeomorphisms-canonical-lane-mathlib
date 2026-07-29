import canonicalLaneMathlib.AdmissibleClass
import .CompactGroupStructure

namespace HautevilleHouse
namespace CompactGroupsHomeomorphismsCanonicalLaneLean

structure HomeomorphismGroup (X : Type u) [TopologicalSpace X] where
  group : Group (X ≃ₜ X)
  topologicalGroup : TopologicalGroup (X ≃ₜ X)

def isCompactSubgroup (G : Type u) [TopologicalSpace G] [Group G] [TopologicalGroup G] : Prop :=
  IsCompact (Set.univ : Set G)

structure AdmissibleCompactHomeomorphismGroup (X : Type u) [TopologicalSpace X] (h : HomeomorphismGroup X) where
  isCompact : isCompactSubgroup (h.group)
  actsByHomeomorphisms : ContinuousMap X X

end CompactGroupsHomeomorphismsCanonicalLaneLean
end HautevilleHouse