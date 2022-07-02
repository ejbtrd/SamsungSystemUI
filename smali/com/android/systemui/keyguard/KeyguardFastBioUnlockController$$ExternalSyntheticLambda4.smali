.class public final synthetic Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->onVisibilityChanged(I)V

    return-void
.end method
