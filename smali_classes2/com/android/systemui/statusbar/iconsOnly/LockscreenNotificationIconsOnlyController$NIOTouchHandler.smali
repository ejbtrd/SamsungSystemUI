.class Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$NIOTouchHandler;
.super Ljava/lang/Object;
.source "LockscreenNotificationIconsOnlyController.java"

# interfaces
.implements Lcom/android/systemui/Gefingerpoken;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NIOTouchHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)V
    .locals 0

    .line 680
    iput-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$NIOTouchHandler;->this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 683
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$NIOTouchHandler;->this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->access$100(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->isInContentArea(Landroid/view/MotionEvent;)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->access$802(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;Z)Z

    .line 687
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$NIOTouchHandler;->this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->access$800(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)Z

    move-result p0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 692
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 693
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    const-string v2, "1005"

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    goto/16 :goto_0

    .line 718
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$NIOTouchHandler;->this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->access$100(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 719
    iget-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$NIOTouchHandler;->this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->access$100(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    goto/16 :goto_0

    .line 713
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$NIOTouchHandler;->this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->access$100(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 714
    iget-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$NIOTouchHandler;->this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->access$100(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 715
    iget-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$NIOTouchHandler;->this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-static {p1, v3}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->access$802(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;Z)Z

    goto/16 :goto_0

    .line 701
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$NIOTouchHandler;->this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->access$900(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$NIOTouchHandler;->this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->access$1000(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)I

    move-result v0

    if-le p1, v0, :cond_5

    .line 702
    iget-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$NIOTouchHandler;->this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->access$100(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 703
    iget-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$NIOTouchHandler;->this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->access$100(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 704
    iget-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$NIOTouchHandler;->this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->access$700(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->goToLockedShade(Landroid/view/View;)V

    .line 706
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Swipe down icon only"

    invoke-static {p1, v2, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 723
    :cond_3
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Tap icon only"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$NIOTouchHandler;->this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->access$100(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 728
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$NIOTouchHandler;->this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->access$100(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 729
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$NIOTouchHandler;->this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->access$802(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;Z)Z

    .line 730
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$NIOTouchHandler;->this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->access$900(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$NIOTouchHandler;->this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->access$1000(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)I

    move-result v0

    if-gt p1, v0, :cond_5

    .line 731
    iget-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$NIOTouchHandler;->this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->access$100(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->performClick()Z

    goto :goto_0

    .line 696
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$NIOTouchHandler;->this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->access$100(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 697
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$NIOTouchHandler;->this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->access$100(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 698
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$NIOTouchHandler;->this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->access$902(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;I)I

    .line 736
    :cond_5
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$NIOTouchHandler;->this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->access$800(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)Z

    move-result p0

    return p0
.end method
