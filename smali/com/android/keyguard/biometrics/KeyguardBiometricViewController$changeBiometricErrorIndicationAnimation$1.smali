.class final Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$changeBiometricErrorIndicationAnimation$1;
.super Ljava/lang/Object;
.source "KeyguardBiometricViewController.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->changeBiometricErrorIndicationAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $alphaSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field final synthetic $scaleXSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field final synthetic $scaleYSpring:Landroidx/dynamicanimation/animation/SpringAnimation;


# direct methods
.method constructor <init>(Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$changeBiometricErrorIndicationAnimation$1;->$scaleXSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$changeBiometricErrorIndicationAnimation$1;->$scaleYSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object p3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$changeBiometricErrorIndicationAnimation$1;->$alphaSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 429
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$changeBiometricErrorIndicationAnimation$1;->$scaleXSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 430
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$changeBiometricErrorIndicationAnimation$1;->$scaleYSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 431
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$changeBiometricErrorIndicationAnimation$1;->$alphaSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method
