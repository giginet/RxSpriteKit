import Foundation
import SpriteKit
import RxSwift
import RxCocoa

extension Reactive where Base: SKEmitterNode {

    public var attributeValues: Binder<[String: SKAttributeValue]> {
        return Binder(self.base) { view, attributeValues in
            view.attributeValues = attributeValues
        }
    }

    public var emissionAngle: Binder<CGFloat> {
        return Binder(self.base) { view, emissionAngle in
            view.emissionAngle = emissionAngle
        }
    }

    public var emissionAngleRange: Binder<CGFloat> {
        return Binder(self.base) { view, emissionAngleRange in
            view.emissionAngleRange = emissionAngleRange
        }
    }

    public var fieldBitMask: Binder<UInt32> {
        return Binder(self.base) { view, fieldBitMask in
            view.fieldBitMask = fieldBitMask
        }
    }

    public var numParticlesToEmit: Binder<Int> {
        return Binder(self.base) { view, numParticlesToEmit in
            view.numParticlesToEmit = numParticlesToEmit
        }
    }

    public var particleAction: Binder<SKAction?> {
        return Binder(self.base) { view, particleAction in
            view.particleAction = particleAction
        }
    }

    public var particleAlpha: Binder<CGFloat> {
        return Binder(self.base) { view, particleAlpha in
            view.particleAlpha = particleAlpha
        }
    }

    public var particleAlphaRange: Binder<CGFloat> {
        return Binder(self.base) { view, particleAlphaRange in
            view.particleAlphaRange = particleAlphaRange
        }
    }

    public var particleAlphaSequence: Binder<SKKeyframeSequence?> {
        return Binder(self.base) { view, particleAlphaSequence in
            view.particleAlphaSequence = particleAlphaSequence
        }
    }

    public var particleAlphaSpeed: Binder<CGFloat> {
        return Binder(self.base) { view, particleAlphaSpeed in
            view.particleAlphaSpeed = particleAlphaSpeed
        }
    }

    public var particleBirthRate: Binder<CGFloat> {
        return Binder(self.base) { view, particleBirthRate in
            view.particleBirthRate = particleBirthRate
        }
    }

    public var particleBlendMode: Binder<SKBlendMode> {
        return Binder(self.base) { view, particleBlendMode in
            view.particleBlendMode = particleBlendMode
        }
    }

    public var particleColor: Binder<RSKColor> {
        return Binder(self.base) { view, particleColor in
            view.particleColor = particleColor
        }
    }

    public var particleColorAlphaRange: Binder<CGFloat> {
        return Binder(self.base) { view, particleColorAlphaRange in
            view.particleColorAlphaRange = particleColorAlphaRange
        }
    }

    public var particleColorAlphaSpeed: Binder<CGFloat> {
        return Binder(self.base) { view, particleColorAlphaSpeed in
            view.particleColorAlphaSpeed = particleColorAlphaSpeed
        }
    }

    public var particleColorBlendFactor: Binder<CGFloat> {
        return Binder(self.base) { view, particleColorBlendFactor in
            view.particleColorBlendFactor = particleColorBlendFactor
        }
    }

    public var particleColorBlendFactorRange: Binder<CGFloat> {
        return Binder(self.base) { view, particleColorBlendFactorRange in
            view.particleColorBlendFactorRange = particleColorBlendFactorRange
        }
    }

    public var particleColorBlendFactorSequence: Binder<SKKeyframeSequence?> {
        return Binder(self.base) { view, particleColorBlendFactorSequence in
            view.particleColorBlendFactorSequence = particleColorBlendFactorSequence
        }
    }

    public var particleColorBlendFactorSpeed: Binder<CGFloat> {
        return Binder(self.base) { view, particleColorBlendFactorSpeed in
            view.particleColorBlendFactorSpeed = particleColorBlendFactorSpeed
        }
    }

    public var particleColorBlueRange: Binder<CGFloat> {
        return Binder(self.base) { view, particleColorBlueRange in
            view.particleColorBlueRange = particleColorBlueRange
        }
    }

    public var particleColorBlueSpeed: Binder<CGFloat> {
        return Binder(self.base) { view, particleColorBlueSpeed in
            view.particleColorBlueSpeed = particleColorBlueSpeed
        }
    }

    public var particleColorGreenRange: Binder<CGFloat> {
        return Binder(self.base) { view, particleColorGreenRange in
            view.particleColorGreenRange = particleColorGreenRange
        }
    }

    public var particleColorGreenSpeed: Binder<CGFloat> {
        return Binder(self.base) { view, particleColorGreenSpeed in
            view.particleColorGreenSpeed = particleColorGreenSpeed
        }
    }

    public var particleColorRedRange: Binder<CGFloat> {
        return Binder(self.base) { view, particleColorRedRange in
            view.particleColorRedRange = particleColorRedRange
        }
    }

    public var particleColorRedSpeed: Binder<CGFloat> {
        return Binder(self.base) { view, particleColorRedSpeed in
            view.particleColorRedSpeed = particleColorRedSpeed
        }
    }

    public var particleColorSequence: Binder<SKKeyframeSequence?> {
        return Binder(self.base) { view, particleColorSequence in
            view.particleColorSequence = particleColorSequence
        }
    }

    public var particleLifetime: Binder<CGFloat> {
        return Binder(self.base) { view, particleLifetime in
            view.particleLifetime = particleLifetime
        }
    }

    public var particleLifetimeRange: Binder<CGFloat> {
        return Binder(self.base) { view, particleLifetimeRange in
            view.particleLifetimeRange = particleLifetimeRange
        }
    }

    public var particlePosition: Binder<CGPoint> {
        return Binder(self.base) { view, particlePosition in
            view.particlePosition = particlePosition
        }
    }

    public var particlePositionRange: Binder<CGVector> {
        return Binder(self.base) { view, particlePositionRange in
            view.particlePositionRange = particlePositionRange
        }
    }

    public var particleRenderOrder: Binder<SKParticleRenderOrder> {
        return Binder(self.base) { view, particleRenderOrder in
            view.particleRenderOrder = particleRenderOrder
        }
    }

    public var particleRotation: Binder<CGFloat> {
        return Binder(self.base) { view, particleRotation in
            view.particleRotation = particleRotation
        }
    }

    public var particleRotationRange: Binder<CGFloat> {
        return Binder(self.base) { view, particleRotationRange in
            view.particleRotationRange = particleRotationRange
        }
    }

    public var particleRotationSpeed: Binder<CGFloat> {
        return Binder(self.base) { view, particleRotationSpeed in
            view.particleRotationSpeed = particleRotationSpeed
        }
    }

    public var particleScale: Binder<CGFloat> {
        return Binder(self.base) { view, particleScale in
            view.particleScale = particleScale
        }
    }

    public var particleScaleRange: Binder<CGFloat> {
        return Binder(self.base) { view, particleScaleRange in
            view.particleScaleRange = particleScaleRange
        }
    }

    public var particleScaleSequence: Binder<SKKeyframeSequence?> {
        return Binder(self.base) { view, particleScaleSequence in
            view.particleScaleSequence = particleScaleSequence
        }
    }

    public var particleScaleSpeed: Binder<CGFloat> {
        return Binder(self.base) { view, particleScaleSpeed in
            view.particleScaleSpeed = particleScaleSpeed
        }
    }

    public var particleSize: Binder<CGSize> {
        return Binder(self.base) { view, particleSize in
            view.particleSize = particleSize
        }
    }

    public var particleSpeed: Binder<CGFloat> {
        return Binder(self.base) { view, particleSpeed in
            view.particleSpeed = particleSpeed
        }
    }

    public var particleSpeedRange: Binder<CGFloat> {
        return Binder(self.base) { view, particleSpeedRange in
            view.particleSpeedRange = particleSpeedRange
        }
    }

    public var particleTexture: Binder<SKTexture?> {
        return Binder(self.base) { view, particleTexture in
            view.particleTexture = particleTexture
        }
    }

    public var particleZPosition: Binder<CGFloat> {
        return Binder(self.base) { view, particleZPosition in
            view.particleZPosition = particleZPosition
        }
    }

    public var shader: Binder<SKShader?> {
        return Binder(self.base) { view, shader in
            view.shader = shader
        }
    }

    public var targetNode: Binder<SKNode?> {
        return Binder(self.base) { view, targetNode in
            view.targetNode = targetNode
        }
    }

    public var xAcceleration: Binder<CGFloat> {
        return Binder(self.base) { view, xAcceleration in
            view.xAcceleration = xAcceleration
        }
    }

    public var yAcceleration: Binder<CGFloat> {
        return Binder(self.base) { view, yAcceleration in
            view.yAcceleration = yAcceleration
        }
    }

}
