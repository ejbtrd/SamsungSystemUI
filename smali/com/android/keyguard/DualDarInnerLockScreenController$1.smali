.class Lcom/android/keyguard/DualDarInnerLockScreenController$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "DualDarInnerLockScreenController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/DualDarInnerLockScreenController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/DualDarInnerLockScreenController;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$1;->this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDualDARInnerLockscreenRequirementChanged(I)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$1;->this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;

    invoke-static {v0}, Lcom/android/keyguard/DualDarInnerLockScreenController;->access$000(Lcom/android/keyguard/DualDarInnerLockScreenController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isDualDarInnerAuthRequired(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$1;->this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;

    invoke-static {p0, p1}, Lcom/android/keyguard/DualDarInnerLockScreenController;->access$100(Lcom/android/keyguard/DualDarInnerLockScreenController;I)V

    :cond_0
    return-void
.end method
