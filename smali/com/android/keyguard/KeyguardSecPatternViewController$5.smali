.class Lcom/android/keyguard/KeyguardSecPatternViewController$5;
.super Lcom/android/systemui/knox/KnoxStateMonitorCallback;
.source "KeyguardSecPatternViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecPatternViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecPatternViewController;)V
    .locals 0

    .line 828
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$5;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-direct {p0}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisableDeviceWhenReachMaxFailed()V
    .locals 3

    .line 831
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$5;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 833
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    const/4 v2, 0x2

    .line 831
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 834
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$5;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$800(Lcom/android/keyguard/KeyguardSecPatternViewController;)V

    return-void
.end method

.method public onDisableProfileWhenReachMaxFailed()V
    .locals 0

    .line 839
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$5;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$2500(Lcom/android/keyguard/KeyguardSecPatternViewController;)V

    return-void
.end method
