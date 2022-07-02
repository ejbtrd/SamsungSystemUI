.class Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SubscreenSubRoomNotificaitonAnimatorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;->alphaViewAnimated(Landroid/view/View;Ljava/lang/Runnable;JFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

.field final synthetic val$endRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;Ljava/lang/Runnable;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager$2;->val$endRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager$2;->val$endRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 123
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
