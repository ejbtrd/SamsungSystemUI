.class Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;
.super Lcom/android/systemui/statusbar/phone/PanelViewController$OnLayoutChangeListener;
.source "NotificationPanelViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnLayoutChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 6938
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController$OnLayoutChangeListener;-><init>(Lcom/android/systemui/statusbar/phone/PanelViewController;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V
    .locals 0

    .line 6938
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1

    const-string v0, "NVP#onLayout"

    .line 6943
    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->startDetectingBlockingIpcs(Ljava/lang/String;)V

    .line 6944
    invoke-super/range {p0 .. p9}, Lcom/android/systemui/statusbar/phone/PanelViewController$OnLayoutChangeListener;->onLayoutChange(Landroid/view/View;IIIIIIII)V

    .line 6945
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$14000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)V

    .line 6946
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getWidth()F

    move-result p3

    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p4}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$4600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p4

    int-to-float p4, p4

    cmpl-float p3, p3, p4

    const/4 p4, 0x0

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    move p2, p4

    :goto_0
    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$15500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)V

    .line 6957
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$12800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result p1

    .line 6958
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p3, p2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz p3, :cond_1

    .line 6959
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$15600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    .line 6960
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p3, p2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p3}, Lcom/android/systemui/plugins/qs/QS;->getDesiredHeight()I

    move-result p3

    invoke-static {p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$12802(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)I

    .line 6961
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    move-result-object p2

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$12800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setMaxTopPadding(I)V

    .line 6963
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    .line 6964
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$4800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-boolean p3, p2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFullyExpanded:Z

    if-eqz p3, :cond_2

    .line 6965
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$12800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result p3

    int-to-float p3, p3

    invoke-static {p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$11302(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;F)F

    .line 6966
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p2, p4}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->requestScrollerTopPaddingUpdate(Z)V

    .line 6967
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->requestPanelHeightUpdate()V

    .line 6970
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$12800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result p2

    if-eq p2, p1, :cond_3

    .line 6971
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$12800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result p3

    invoke-static {p2, p1, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$15700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;II)V

    goto :goto_1

    .line 6973
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$4800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$4300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-nez p1, :cond_3

    .line 6974
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$11000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$10800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)F

    move-result p3

    add-float/2addr p2, p3

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$11100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;F)V

    .line 6976
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getExpandedHeight()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateExpandedHeight(F)V

    .line 6977
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$15800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    .line 6987
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz p1, :cond_4

    .line 6988
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QS;->getDesiredHeight()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/qs/QS;->setHeightOverride(I)V

    .line 6990
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$15900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    .line 6991
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$12400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    .line 6992
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$16000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 6993
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$16000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 6994
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$16002(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 6996
    :cond_5
    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->stopDetectingBlockingIpcs(Ljava/lang/String;)V

    return-void
.end method
