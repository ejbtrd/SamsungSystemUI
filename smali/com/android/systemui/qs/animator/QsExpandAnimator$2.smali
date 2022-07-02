.class Lcom/android/systemui/qs/animator/QsExpandAnimator$2;
.super Ljava/lang/Object;
.source "QsExpandAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 1032
    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator$2;->this$0:Lcom/android/systemui/qs/animator/QsExpandAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1035
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator$2;->this$0:Lcom/android/systemui/qs/animator/QsExpandAnimator;

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->updateAnimators()V

    return-void
.end method
