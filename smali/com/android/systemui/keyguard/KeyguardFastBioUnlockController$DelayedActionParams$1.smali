.class Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams$1;
.super Ljava/lang/Object;
.source "KeyguardFastBioUnlockController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;)V
    .locals 0

    .line 711
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 714
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->access$300(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->access$400(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 716
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->discard()V

    :cond_0
    return-void
.end method
