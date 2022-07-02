.class Lcom/android/systemui/media/SecMediaControlPanel$7;
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

    .line 689
    iput-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$7;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationAtEnd()V
    .locals 0

    .line 695
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel$7;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    invoke-static {p0}, Lcom/android/systemui/media/SecMediaControlPanel;->access$2000(Lcom/android/systemui/media/SecMediaControlPanel;)V

    return-void
.end method

.method public onAnimationAtStart()V
    .locals 0

    .line 691
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel$7;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    invoke-static {p0}, Lcom/android/systemui/media/SecMediaControlPanel;->access$2000(Lcom/android/systemui/media/SecMediaControlPanel;)V

    return-void
.end method

.method public onAnimationStarted()V
    .locals 0

    .line 699
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel$7;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    invoke-static {p0}, Lcom/android/systemui/media/SecMediaControlPanel;->access$2000(Lcom/android/systemui/media/SecMediaControlPanel;)V

    return-void
.end method
