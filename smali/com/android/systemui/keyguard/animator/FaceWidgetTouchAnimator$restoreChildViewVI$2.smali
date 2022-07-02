.class final Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator$restoreChildViewVI$2;
.super Ljava/lang/Object;
.source "FaceWidgetTouchAnimator.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->restoreChildViewVI()V
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

    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator$restoreChildViewVI$2;->this$0:Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator$restoreChildViewVI$2;->this$0:Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->access$setCancelExecToken$p(Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;Ljava/lang/Runnable;)V

    .line 143
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator$restoreChildViewVI$2;->this$0:Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->access$getSbStateController$p(Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;)Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator$restoreChildViewVI$2;->this$0:Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->access$getKeyguardStateController$p(Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardGoingAway()Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator$restoreChildViewVI$2;->this$0:Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->access$getCallback$p(Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;)Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;->showFacewidgetDashBoard()V

    goto :goto_0

    :cond_0
    const-string p0, "callback"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p0, "FaceWidgetTouchAnimator"

    const-string/jumbo v0, "showFacewidgetDashBoard was cancelled"

    .line 146
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
