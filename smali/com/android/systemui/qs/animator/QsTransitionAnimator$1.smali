.class Lcom/android/systemui/qs/animator/QsTransitionAnimator$1;
.super Ljava/lang/Object;
.source "QsTransitionAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/animator/QsTransitionAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/animator/QsTransitionAnimator;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$1;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$1;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    invoke-static {p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->access$000(Lcom/android/systemui/qs/animator/QsTransitionAnimator;)V

    return-void
.end method
