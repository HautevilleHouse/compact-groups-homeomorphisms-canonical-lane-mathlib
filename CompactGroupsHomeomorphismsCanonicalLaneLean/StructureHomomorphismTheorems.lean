import CompactGroupStructure

namespace HautevilleHouse
namespace CompactGroupsHomeomorphismsCanonicalLaneLean

structure HomomorphismStructuralPackage (G : CompactGroupSpace) (H : CompactGroupSpace) where
  continuousHom : G → H
  kernelClosed : Prop
  imageClosed : Prop
  isomorphismInduced : Prop

structure HomomorphismStructuralEvidence {G H : CompactGroupSpace}
    (P : HomomorphismStructuralPackage G H) where
  kernelClosedProof : P.kernelClosed
  imageClosedProof : P.imageClosed
  isomorphismInducedProof : P.isomorphismInduced

def HomomorphismStructuralClosed {G H : CompactGroupSpace}
    (P : HomomorphismStructuralPackage G H) : Prop :=
  P.kernelClosed ∧ P.imageClosed ∧ P.isomorphismInduced

theorem homomorphism_structural_closed_from_evidence
    {G H : CompactGroupSpace} (P : HomomorphismStructuralPackage G H)
    (E : HomomorphismStructuralEvidence P) : HomomorphismStructuralClosed P := by
  exact And.intro E.kernelClosedProof (And.intro E.imageClosedProof E.isomorphismInducedProof)

end CompactGroupsHomeomorphismsCanonicalLaneLean
end HautevilleHouse