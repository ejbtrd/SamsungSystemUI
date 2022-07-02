.class final Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$onTouchEvent$1;
.super Ljava/lang/Object;
.source "KeyguardTouchAnimator.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->onTouchEvent(Landroid/view/MotionEvent;)Z
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

    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$onTouchEvent$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$onTouchEvent$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->access$getCallback$p(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;->callUserActivity()V

    return-void

    :cond_0
    const-string p0, "callback"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
