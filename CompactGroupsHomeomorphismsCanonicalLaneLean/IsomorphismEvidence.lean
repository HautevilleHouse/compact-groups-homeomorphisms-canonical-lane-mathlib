import CompactGroupsHomeomorphismsCanonicalLaneLean.HomomorphismFoundation

namespace HautevilleHouse
namespace CompactGroupsHomeomorphismsCanonicalLaneLean

structure IsomorphismEvidencePackage {G H : CompactGroupSpace}
    {pkgG : CompactGroupStructurePackage G} {pkgH : CompactGroupStructurePackage H}
    (pkgHom : HomomorphismFoundationPackage pkgG pkgH) where
  isBijective : Function.Bijective pkgHom.homMap
  inverseContinuousHom : H.carrier → G.carrier
  inverseContinuous : Continuous inverseContinuousHom
  inverseRespectsMul : ∀ x y : H.carrier, inverseContinuousHom (x * y) = inverseContinuousHom x * inverseContinuousHom y
  leftInverse : ∀ x : G.carrier, inverseContinuousHom (pkgHom.homMap x) = x
  rightInverse : ∀ y : H.carrier, pkgHom.homMap (inverseContinuousHom y) = y

structure IsomorphismEvidence {G H : CompactGroupSpace}
    {pkgG : CompactGroupStructurePackage G} {pkgH : CompactGroupStructurePackage H}
    {pkgHom : HomomorphismFoundationPackage pkgG pkgH}
    (pkg : IsomorphismEvidencePackage pkgHom) where
  isBijectiveClosed : pkg.isBijective
  inverseContinuousClosed : pkg.inverseContinuous
  inverseRespectsMulClosed : pkg.inverseRespectsMul
  leftInverseClosed : pkg.leftInverse
  rightInverseClosed : pkg.rightInverse

def IsomorphismEvidenceClosed {G H : CompactGroupSpace}
    {pkgG : CompactGroupStructurePackage G} {pkgH : CompactGroupStructurePackage H}
    {pkgHom : HomomorphismFoundationPackage pkgG pkgH}
    (pkg : IsomorphismEvidencePackage pkgHom) : Prop :=
  pkg.isBijective ∧ pkg.inverseContinuous ∧ pkg.inverseRespectsMul ∧ pkg.leftInverse ∧ pkg.rightInverse

theorem isomorphism_evidence_closed_from_evidence
    {G H : CompactGroupSpace} {pkgG : CompactGroupStructurePackage G} {pkgH : CompactGroupStructurePackage H}
    {pkgHom : HomomorphismFoundationPackage pkgG pkgH}
    (pkg : IsomorphismEvidencePackage pkgHom) (E : IsomorphismEvidence pkg) :
    IsomorphismEvidenceClosed pkg := by
  exact And.intro E.isBijectiveClosed
    (And.intro E.inverseContinuousClosed
      (And.intro E.inverseRespectsMulClosed
        (And.intro E.leftInverseClosed E.rightInverseClosed)))

end CompactGroupsHomeomorphismsCanonicalLaneLean
end HautevilleHouse