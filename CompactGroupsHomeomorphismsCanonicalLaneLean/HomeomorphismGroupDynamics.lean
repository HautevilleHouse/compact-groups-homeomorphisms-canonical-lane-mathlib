import CompactGroupStructure

namespace HautevilleHouse
namespace CompactGroupsHomeomorphismsCanonicalLaneLean

structure HomeomorphismGroupPackage (G : CompactGroupSpace) where
  homeoGroup : Type u
  groupStructure : Group homeoGroup
  topology : TopologicalSpace homeoGroup
  compactOpenTopology : Prop
  evaluationContinuous : Prop

structure HomeomorphismGroupEvidence {G : CompactGroupSpace}
    (P : HomeomorphismGroupPackage G) where
  compactOpenTopologyProof : P.compactOpenTopology
  evaluationContinuousProof : P.evaluationContinuous

def HomeomorphismGroupClosed {G : CompactGroupSpace}
    (P : HomeomorphismGroupPackage G) : Prop :=
  P.compactOpenTopology ∧ P.evaluationContinuous

theorem homeomorphism_group_closed_from_evidence
    {G : CompactGroupSpace} (P : HomeomorphismGroupPackage G)
    (E : HomeomorphismGroupEvidence P) : HomeomorphismGroupClosed P := by
  exact And.intro E.compactOpenTopologyProof E.evaluationContinuousProof

end CompactGroupsHomeomorphismsCanonicalLaneLean
end HautevilleHouse