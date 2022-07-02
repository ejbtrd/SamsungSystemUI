.class final Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator$onTouchEvent$1;
.super Ljava/lang/Object;
.source "FaceWidgetTouchAnimator.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator$onTouchEvent$1;->this$0:Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator$onTouchEvent$1;->this$0:Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->access$getCallback$p(Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;)Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;

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
