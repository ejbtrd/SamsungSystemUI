.class final Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$4;
.super Ljava/lang/Object;
.source "KeyguardTouchAnimator.kt"

# interfaces
.implements Ljava/util/function/Function;


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
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "Landroid/view/View;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$4;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Landroid/view/View;)Ljava/lang/Float;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$4;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->getAffordancePivotY()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$4;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->getAffordancePivotY()I

    move-result p0

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    neg-int p0, p0

    :goto_0
    int-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 83
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$4;->apply(Landroid/view/View;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
