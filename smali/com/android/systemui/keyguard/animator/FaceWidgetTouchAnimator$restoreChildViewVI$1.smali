.class final Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator$restoreChildViewVI$1;
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

    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator$restoreChildViewVI$1;->this$0:Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 131
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator$restoreChildViewVI$1;->this$0:Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->setRestoreRunning(Z)V

    return-void
.end method
