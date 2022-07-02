.class public final Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$gestureListener$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "KeyguardTouchAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/PowerManager;Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;Lcom/android/systemui/keyguard/animator/KeyguardTouchLoggingInjector;Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/util/SettingsHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $powerManager:Landroid/os/PowerManager;

.field final synthetic this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;


# direct methods
.method constructor <init>(Landroid/os/PowerManager;Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$gestureListener$1;->$powerManager:Landroid/os/PowerManager;

    iput-object p2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$gestureListener$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    .line 104
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iget-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$gestureListener$1;->$powerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/16 v2, 0x17

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 107
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$gestureListener$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->access$sendSALog(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    const/4 p0, 0x1

    return p0
.end method
