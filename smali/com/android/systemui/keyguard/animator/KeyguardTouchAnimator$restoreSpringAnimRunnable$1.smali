.class final Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$restoreSpringAnimRunnable$1;
.super Ljava/lang/Object;
.source "KeyguardTouchAnimator.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/PowerManager;Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;Lcom/android/systemui/keyguard/animator/KeyguardTouchLoggingInjector;Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/util/SettingsHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$restoreSpringAnimRunnable$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$restoreSpringAnimRunnable$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->access$restoreTapAffordanceAnimation(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    return-void
.end method
