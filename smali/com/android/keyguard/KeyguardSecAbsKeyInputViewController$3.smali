.class Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$3;
.super Lcom/android/systemui/knox/KnoxStateMonitorCallback;
.source "KeyguardSecAbsKeyInputViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-direct {p0}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisableDeviceWhenReachMaxFailed()V
    .locals 3

    .line 281
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 283
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    const/4 v2, 0x2

    .line 281
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 284
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->disableDevicePermanently()V

    return-void
.end method

.method public onDisableProfileWhenReachMaxFailed()V
    .locals 0

    .line 289
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->access$1400(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)V

    return-void
.end method
