.class final Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$parentView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "KeyguardTouchAnimator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/PowerManager;Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;Lcom/android/systemui/keyguard/animator/KeyguardTouchLoggingInjector;Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/util/SettingsHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$parentView$2;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/view/View;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$parentView$2;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->access$getViewInjector$p(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;->provideParent()Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const-string/jumbo p0, "viewInjector"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$parentView$2;->invoke()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
