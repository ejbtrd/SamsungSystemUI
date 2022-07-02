.class Lcom/android/systemui/qs/animator/QsExpandAnimator$1;
.super Lcom/android/systemui/qs/TouchAnimator$ListenerAdapter;
.source "QsExpandAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/animator/QsExpandAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/animator/QsExpandAnimator;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/animator/QsExpandAnimator;)V
    .locals 0

    .line 1020
    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator$1;->this$0:Lcom/android/systemui/qs/animator/QsExpandAnimator;

    invoke-direct {p0}, Lcom/android/systemui/qs/TouchAnimator$ListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationAtEnd()V
    .locals 1

    .line 1023
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator$1;->this$0:Lcom/android/systemui/qs/animator/QsExpandAnimator;

    invoke-static {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->access$000(Lcom/android/systemui/qs/animator/QsExpandAnimator;)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStarted()V
    .locals 1

    .line 1028
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator$1;->this$0:Lcom/android/systemui/qs/animator/QsExpandAnimator;

    invoke-static {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->access$000(Lcom/android/systemui/qs/animator/QsExpandAnimator;)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
