.class Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator$1;
.super Ljava/lang/Object;
.source "FrontCoverViewAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;

    invoke-static {p0}, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->access$000(Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;)Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator$ViewUpdateCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator$ViewUpdateCallback;->dismissByTimeoutDuringSecureConfirm()V

    return-void
.end method
