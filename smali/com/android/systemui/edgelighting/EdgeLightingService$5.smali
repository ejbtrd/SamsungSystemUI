.class Lcom/android/systemui/edgelighting/EdgeLightingService$5;
.super Ljava/lang/Object;
.source "EdgeLightingService.java"

# interfaces
.implements Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/edgelighting/EdgeLightingService;->createEdgeLightingDialog(Z)Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mMirroringModel:Lcom/android/systemui/statusbar/SecHideInformationMirroringModel;

.field final synthetic this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;


# direct methods
.method constructor <init>(Lcom/android/systemui/edgelighting/EdgeLightingService;)V
    .locals 0

    .line 683
    iput-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$5;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 684
    new-instance p1, Lcom/android/systemui/statusbar/SecHideInformationMirroringModel;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/SecHideInformationMirroringModel;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$5;->mMirroringModel:Lcom/android/systemui/statusbar/SecHideInformationMirroringModel;

    return-void
.end method

.method private addInternalPresentationWindowFlag()V
    .locals 2

    .line 790
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$5;->mMirroringModel:Lcom/android/systemui/statusbar/SecHideInformationMirroringModel;

    iget-object v1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$5;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-virtual {v1}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/SecHideInformationMirroringModel;->shouldHideInformation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 791
    invoke-static {}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HideInformationMirroring addInternalPresentationWindowFlag()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$5;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$700(Lcom/android/systemui/edgelighting/EdgeLightingService;)Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$5;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$700(Lcom/android/systemui/edgelighting/EdgeLightingService;)Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$5;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$700(Lcom/android/systemui/edgelighting/EdgeLightingService;)Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 793
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$5;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$700(Lcom/android/systemui/edgelighting/EdgeLightingService;)Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    const/high16 v1, -0x80000000

    .line 795
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    .line 797
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$5;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {v1}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$700(Lcom/android/systemui/edgelighting/EdgeLightingService;)Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 799
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$5;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$700(Lcom/android/systemui/edgelighting/EdgeLightingService;)Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public doActionNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 753
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$5;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$600(Lcom/android/systemui/edgelighting/EdgeLightingService;)Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler;->doActionNotification(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onClickExpandButton(Ljava/lang/String;)V
    .locals 0

    .line 779
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$5;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {p0, p1}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$1300(Lcom/android/systemui/edgelighting/EdgeLightingService;Ljava/lang/String;)V

    .line 782
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QPNE0104"

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onClickToastInWindow()V
    .locals 0

    .line 732
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$5;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$600(Lcom/android/systemui/edgelighting/EdgeLightingService;)Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler;->onClickedToast()V

    return-void
.end method

.method public onDismissEdgeWindow()V
    .locals 6

    .line 712
    invoke-static {}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, " onDismissEdgeWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$5;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$600(Lcom/android/systemui/edgelighting/EdgeLightingService;)Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$5;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$600(Lcom/android/systemui/edgelighting/EdgeLightingService;)Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler;->notifyEdgeLightingPackageList(Z)V

    :cond_0
    const-wide/16 v2, 0x1f4

    .line 719
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$5;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$1100(Lcom/android/systemui/edgelighting/EdgeLightingService;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v2, 0x1388

    .line 722
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$5;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$500(Lcom/android/systemui/edgelighting/EdgeLightingService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$5;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    .line 723
    invoke-static {v4}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$500(Lcom/android/systemui/edgelighting/EdgeLightingService;)Landroid/os/Handler;

    move-result-object v4

    const-string v5, "onDismissEdgeWindow"

    invoke-virtual {v4, v1, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 722
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 727
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$5;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$600(Lcom/android/systemui/edgelighting/EdgeLightingService;)Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler;->releaseWakeLock()V

    return-void
.end method

.method public onExtendLightingDuration()V
    .locals 0

    .line 748
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$5;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$600(Lcom/android/systemui/edgelighting/EdgeLightingService;)Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler;->onExtendDurationLighting()V

    return-void
.end method

.method public onFling(ZZ)V
    .locals 2

    if-eqz p1, :cond_0

    .line 760
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QPNE0103"

    invoke-static {v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    :cond_0
    sget-boolean v0, Lcom/android/wm/shell/CoreShellRune;->MW_FREEFORM_USAGE_LOGGING:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const-string v0, "2004"

    const-string v1, "From Noti_Swipedown"

    .line 767
    invoke-static {v0, v1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$5;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$600(Lcom/android/systemui/edgelighting/EdgeLightingService;)Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler;->onFling(ZZ)V

    return-void
.end method

.method public onFlingDownInWindow(Z)V
    .locals 3

    .line 742
    invoke-static {}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFlingDownInWindow "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$5;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$600(Lcom/android/systemui/edgelighting/EdgeLightingService;)Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler;->onLaunchPopupView(Z)V

    return-void
.end method

.method public onShowEdgeWindow()V
    .locals 2

    .line 687
    invoke-static {}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, " onShowEdgeWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$5;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$500(Lcom/android/systemui/edgelighting/EdgeLightingService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 691
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_HIDE_INFORMATION_MIRRORING:Z

    if-eqz v0, :cond_0

    .line 692
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/EdgeLightingService$5;->addInternalPresentationWindowFlag()V

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$5;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$600(Lcom/android/systemui/edgelighting/EdgeLightingService;)Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler;->notifyEdgeLightingPackageList(Z)V

    .line 697
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$5;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$700(Lcom/android/systemui/edgelighting/EdgeLightingService;)Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$5;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$700(Lcom/android/systemui/edgelighting/EdgeLightingService;)Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$5;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$700(Lcom/android/systemui/edgelighting/EdgeLightingService;)Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 698
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$5;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$700(Lcom/android/systemui/edgelighting/EdgeLightingService;)Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/edgelighting/EdgeLightingService$5$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/edgelighting/EdgeLightingService$5$1;-><init>(Lcom/android/systemui/edgelighting/EdgeLightingService$5;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_1
    return-void
.end method

.method public onSwipeToastInWindow()V
    .locals 0

    .line 737
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$5;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$600(Lcom/android/systemui/edgelighting/EdgeLightingService;)Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler;->onSwipeToast()V

    return-void
.end method
