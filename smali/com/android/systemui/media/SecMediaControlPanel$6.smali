.class Lcom/android/systemui/media/SecMediaControlPanel$6;
.super Ljava/lang/Object;
.source "SecMediaControlPanel.java"

# interfaces
.implements Lcom/android/systemui/qs/TouchAnimator$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/SecMediaControlPanel;->updateExpandAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/SecMediaControlPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/SecMediaControlPanel;)V
    .locals 0

    .line 639
    iput-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$6;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationAtEnd()V
    .locals 0

    .line 645
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel$6;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    invoke-static {p0}, Lcom/android/systemui/media/SecMediaControlPanel;->access$1900(Lcom/android/systemui/media/SecMediaControlPanel;)V

    return-void
.end method

.method public onAnimationAtStart()V
    .locals 0

    .line 641
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel$6;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    invoke-static {p0}, Lcom/android/systemui/media/SecMediaControlPanel;->access$1900(Lcom/android/systemui/media/SecMediaControlPanel;)V

    return-void
.end method

.method public onAnimationStarted()V
    .locals 0

    .line 649
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel$6;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    invoke-static {p0}, Lcom/android/systemui/media/SecMediaControlPanel;->access$1900(Lcom/android/systemui/media/SecMediaControlPanel;)V

    return-void
.end method
