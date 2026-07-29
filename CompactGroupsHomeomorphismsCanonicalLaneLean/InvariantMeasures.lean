import CompactGroupStructure

namespace HautevilleHouse
namespace CompactGroupsHomeomorphismsCanonicalLaneLean

structure InvariantMeasurePackage (G : CompactGroupSpace) where
  haarMeasureExists : Prop
  invarianceUnderGroup : Prop
  uniqueness : Prop

structure InvariantMeasureEvidence {G : CompactGroupSpace}
    (P : InvariantMeasurePackage G) where
  haarMeasureExistsProof : P.haarMeasureExists
  invarianceUnderGroupProof : P.invarianceUnderGroup
  uniquenessProof : P.uniqueness

def InvariantMeasureClosed {G : CompactGroupSpace}
    (P : InvariantMeasurePackage G) : Prop :=
  P.haarMeasureExists ∧ P.invarianceUnderGroup ∧ P.uniqueness

theorem invariant_measure_closed_from_evidence
    {G : CompactGroupSpace} (P : InvariantMeasurePackage G)
    (E : InvariantMeasureEvidence P) : InvariantMeasureClosed P := by
  exact And.intro E.haarMeasureExistsProof
    (And.intro E.invarianceUnderGroupProof E.uniquenessProof)

end CompactGroupsHomeomorphismsCanonicalLaneLean
end HautevilleHouse