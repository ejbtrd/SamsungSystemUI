.class final Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;
.super Landroid/os/Handler;
.source "FreeformContainerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# instance fields
.field private mFreeformInputChannel:Landroid/view/InputChannel;

.field private mFreeformTouchHandler:Lcom/samsung/android/systemui/freeformcontainer/FreeformTouchHandler;

.field private final mIWindowManager:Landroid/view/IWindowManager;

.field private mIsBindingMinimizeContainerService:Z

.field private mIsBindingSmartPopupViewService:Z

.field private final mItemController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;

.field private final mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

.field private final mWindowManager:Landroid/view/WindowManager;

.field final synthetic this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;Landroid/os/Looper;)V
    .locals 2

    .line 278
    iput-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 279
    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 281
    new-instance p2, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    invoke-static {p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->access$000(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    .line 282
    new-instance p2, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;

    invoke-static {p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->access$000(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mItemController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;

    const-string/jumbo p2, "window"

    .line 284
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mIWindowManager:Landroid/view/IWindowManager;

    .line 285
    invoke-static {p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->access$000(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mWindowManager:Landroid/view/WindowManager;

    const/4 p1, 0x0

    .line 286
    iput-boolean p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mIsBindingMinimizeContainerService:Z

    .line 288
    iput-boolean p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mIsBindingSmartPopupViewService:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;Landroid/os/Looper;Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$1;)V
    .locals 0

    .line 229
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;-><init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;Landroid/os/Looper;)V

    return-void
.end method

.method private checkMessageAndServiceCondition(I)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x15

    if-eq p1, v1, :cond_2

    .line 383
    iget-boolean v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mIsBindingSmartPopupViewService:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0xb

    if-eq p1, v1, :cond_2

    .line 387
    iget-boolean p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mIsBindingMinimizeContainerService:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method private messageToString(I)Ljava/lang/String;
    .locals 0

    const/16 p0, 0x28

    if-eq p1, p0, :cond_1

    const/16 p0, 0x29

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_0
    const-string p0, "FREEFORM_CONTAINER_CLOSE_FULLSCREEN_MODE"

    return-object p0

    :pswitch_1
    const-string p0, "FREEFORM_CONTAINER_ROTATION_CHANGED"

    return-object p0

    :pswitch_2
    const-string p0, "FREEFORM_CONTAINER_REBUILD_ALL"

    return-object p0

    :pswitch_3
    const-string p0, "FREEFORM_CONTAINER_USER_SWITCH"

    return-object p0

    :pswitch_4
    const-string p0, "FREEFORM_CONTAINER_LOAD_ICON_COMPLETED"

    return-object p0

    :pswitch_5
    const-string p0, "FREEFORM_CONTAINER_LAUNCH_ITEM"

    return-object p0

    :pswitch_6
    const-string p0, "SMART_POPUP_VIEW_REMOVE_ITEM"

    return-object p0

    :pswitch_7
    const-string p0, "SMART_POPUP_VIEW_ADD_ITEM"

    return-object p0

    :pswitch_8
    const-string p0, "SMART_POPUP_VIEW_SERVICE_UNBIND"

    return-object p0

    :pswitch_9
    const-string p0, "SMART_POPUP_VIEW_SERVICE_BIND"

    return-object p0

    :pswitch_a
    const-string p0, "MINIMIZE_CONTAINER_MINIMIZE_TIMEOUT"

    return-object p0

    :pswitch_b
    const-string p0, "MINIMIZE_CONTAINER_ANIM_COMPLETED"

    return-object p0

    :pswitch_c
    const-string p0, "MINIMIZE_CONTAINER_REMOVE_ITEM"

    return-object p0

    :pswitch_d
    const-string p0, "MINIMIZE_CONTAINER_ADD_ITEM"

    return-object p0

    :pswitch_e
    const-string p0, "MINIMIZE_CONTAINER_SERVICE_UNBIND"

    return-object p0

    :pswitch_f
    const-string p0, "MINIMIZE_CONTAINER_SERVICE_BIND"

    return-object p0

    :cond_0
    const-string p0, "TASK_MOVE_ENDED"

    return-object p0

    :cond_1
    const-string p0, "TASK_MOVE_STARTED"

    return-object p0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1e
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private noRunningService()Z
    .locals 1

    .line 374
    iget-boolean v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mIsBindingSmartPopupViewService:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 377
    :cond_0
    iget-boolean p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mIsBindingMinimizeContainerService:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method destroy()V
    .locals 2

    const/4 v0, 0x0

    .line 316
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 317
    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    invoke-virtual {v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->destroy()V

    .line 318
    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mItemController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;

    invoke-virtual {v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->destroy()V

    .line 321
    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mFreeformInputChannel:Landroid/view/InputChannel;

    if-eqz v1, :cond_0

    .line 322
    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 323
    iput-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mFreeformInputChannel:Landroid/view/InputChannel;

    .line 326
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mFreeformTouchHandler:Lcom/samsung/android/systemui/freeformcontainer/FreeformTouchHandler;

    if-eqz v1, :cond_1

    .line 327
    invoke-virtual {v1}, Landroid/view/InputEventReceiver;->dispose()V

    .line 328
    iput-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mFreeformTouchHandler:Lcom/samsung/android/systemui/freeformcontainer/FreeformTouchHandler;

    :cond_1
    return-void
.end method

.method getDisplayRotation()I
    .locals 0

    .line 297
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;

    invoke-static {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->access$000(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    return p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 392
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->checkMessageAndServiceCondition(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 397
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v1, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;

    if-eqz v2, :cond_1

    .line 398
    move-object v0, v1

    check-cast v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;

    .line 400
    :cond_1
    sget-boolean v1, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->DEBUG:Z

    const-string v2, "FreeformContainer"

    if-eqz v1, :cond_3

    .line 401
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Manager] handleMessage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    .line 402
    invoke-direct {p0, v4}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->messageToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_2

    const-string v4, ""

    goto :goto_0

    .line 403
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " item="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 401
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_3
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x28

    const/4 v5, 0x1

    if-eq v3, v4, :cond_e

    const/16 v4, 0x29

    const/4 v6, 0x0

    if-eq v3, v4, :cond_d

    const-string v4, " failed, due to no taskId: "

    const-string v7, "[Manager] "

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    packed-switch v3, :pswitch_data_2

    goto/16 :goto_1

    .line 560
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 561
    check-cast p1, Ljava/lang/String;

    .line 562
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->closeFullscreenMode(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 563
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->requestLayout()V

    goto/16 :goto_1

    .line 540
    :pswitch_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 541
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;

    invoke-static {v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->access$300(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;)I

    move-result v0

    if-eq v0, p1, :cond_f

    .line 543
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    const-string v1, "fullscreen_mode_request_screen_rotating"

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->closeFullscreenMode(Ljava/lang/String;)Z

    const/16 v0, 0x23

    .line 544
    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 546
    iget-object v2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    invoke-virtual {v2, v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->openFullscreenMode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 547
    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 552
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mItemController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->forceCompleteAnimationOfAllItems()V

    .line 553
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    invoke-virtual {v0, v6}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->updateDisplayFrame(Z)V

    .line 554
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;

    invoke-static {v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->access$300(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->notifyRotationChanged(II)V

    .line 555
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;

    invoke-static {p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->access$302(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;I)I

    goto/16 :goto_1

    .line 527
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mItemController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;

    invoke-virtual {p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->copyItemList()Ljava/util/List;

    move-result-object p1

    .line 528
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->destroy()V

    .line 529
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->init()V

    .line 530
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mItemController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->addAllItems(Ljava/util/List;)V

    goto/16 :goto_1

    .line 518
    :pswitch_3
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->destroy()V

    .line 519
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->init()V

    .line 521
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mItemController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;

    invoke-virtual {p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->removeAllSmartPopupViewItem()V

    .line 523
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mItemController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;

    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;

    invoke-static {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->access$000(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->restoreMinimizeContainerItems(Landroid/content/Context;)V

    goto/16 :goto_1

    :pswitch_4
    if-eqz v0, :cond_f

    .line 535
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mItemController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->iconLoadCompleted(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;)V

    goto/16 :goto_1

    :pswitch_5
    if-eqz v0, :cond_f

    .line 512
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mItemController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->removeItem(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;)V

    .line 513
    invoke-virtual {v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->launch()V

    goto/16 :goto_1

    .line 505
    :pswitch_6
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mItemController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;

    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->removeAllSmartPopupViewItem()V

    goto/16 :goto_1

    .line 491
    :pswitch_7
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mItemController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->getItemByName(Ljava/lang/String;)Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;

    move-result-object v0

    .line 492
    instance-of v3, v0, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewItem;

    if-eqz v3, :cond_5

    .line 493
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mItemController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->removeItem(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;)V

    goto/16 :goto_1

    :cond_5
    if-eqz v1, :cond_f

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->messageToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " failed, due to no smart popup view item which has packageName: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 482
    :pswitch_8
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    invoke-virtual {p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->isPointerViewState()Z

    move-result p1

    if-nez p1, :cond_6

    .line 483
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    invoke-virtual {p1, v5, v5}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->updateContainerState(IZ)V

    :cond_6
    if-eqz v0, :cond_f

    .line 486
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mItemController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->addItem(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;)V

    goto/16 :goto_1

    .line 472
    :pswitch_9
    iput-boolean v6, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mIsBindingSmartPopupViewService:Z

    .line 473
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->noRunningService()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 474
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->destroy()V

    .line 475
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->unregisterReceivers()V

    goto/16 :goto_1

    .line 477
    :cond_7
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mItemController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;

    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->removeAllSmartPopupViewItem()V

    goto/16 :goto_1

    .line 464
    :pswitch_a
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->noRunningService()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 465
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->init()V

    .line 466
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->registerReceivers()V

    .line 468
    :cond_8
    iput-boolean v5, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mIsBindingSmartPopupViewService:Z

    goto/16 :goto_1

    .line 452
    :pswitch_b
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mItemController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->getItemById(I)Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 454
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mItemController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->animationCompleted(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;)V

    goto/16 :goto_1

    .line 456
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    .line 457
    invoke-direct {p0, v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->messageToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 456
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 438
    :pswitch_c
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mItemController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->getItemById(I)Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 440
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mItemController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->removeItem(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;)V

    goto/16 :goto_1

    :cond_a
    if-eqz v1, :cond_f

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    .line 444
    invoke-direct {p0, v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->messageToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 443
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_d
    if-eqz v0, :cond_f

    const/16 p1, 0x10

    .line 427
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerItem;

    .line 429
    invoke-virtual {v1}, Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerItem;->getTaskId()I

    move-result v1

    .line 427
    invoke-virtual {p0, p1, v1, v6, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0xbb8

    .line 431
    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 433
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mItemController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->addItem(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;)V

    goto :goto_1

    .line 416
    :pswitch_e
    iput-boolean v6, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mIsBindingMinimizeContainerService:Z

    .line 417
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->noRunningService()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 418
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->destroy()V

    .line 419
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->unregisterReceivers()V

    goto :goto_1

    .line 421
    :cond_b
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mItemController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;

    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->removeAllMinimizeContainerItem()V

    goto :goto_1

    .line 408
    :pswitch_f
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->noRunningService()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 409
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->init()V

    .line 410
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->registerReceivers()V

    .line 412
    :cond_c
    iput-boolean v5, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mIsBindingMinimizeContainerService:Z

    goto :goto_1

    .line 577
    :cond_d
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 578
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/IRemoteCallback;

    .line 579
    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mFreeformTouchHandler:Lcom/samsung/android/systemui/freeformcontainer/FreeformTouchHandler;

    invoke-virtual {v1, v6}, Lcom/samsung/android/systemui/freeformcontainer/FreeformTouchHandler;->setMoving(Z)V

    .line 580
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->hideDismissButtonAndRemoveFreeform(ILandroid/os/IRemoteCallback;)V

    goto :goto_1

    .line 570
    :cond_e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Point;

    .line 571
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mFreeformTouchHandler:Lcom/samsung/android/systemui/freeformcontainer/FreeformTouchHandler;

    invoke-virtual {v0, v5}, Lcom/samsung/android/systemui/freeformcontainer/FreeformTouchHandler;->setMoving(Z)V

    .line 572
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v1, p1, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->showDismissButton(Landroid/graphics/Rect;)V

    :cond_f
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1e
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method init()V
    .locals 4

    .line 301
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mItemController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->init(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;)V

    .line 302
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mItemController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;

    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->init(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;)V

    .line 303
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;

    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->getDisplayRotation()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->access$302(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;I)I

    .line 306
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;

    invoke-static {v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->access$000(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "input"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    const-string v1, "freeformInputMonitor"

    const/4 v2, 0x0

    .line 307
    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->monitorInput(Ljava/lang/String;I)Landroid/view/InputChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mFreeformInputChannel:Landroid/view/InputChannel;

    .line 309
    new-instance v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformTouchHandler;

    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mFreeformInputChannel:Landroid/view/InputChannel;

    .line 310
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/systemui/freeformcontainer/FreeformTouchHandler;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mFreeformTouchHandler:Lcom/samsung/android/systemui/freeformcontainer/FreeformTouchHandler;

    return-void
.end method

.method isRotating()Z
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;

    invoke-static {v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->access$300(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->getDisplayRotation()I

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method registerReceivers()V
    .locals 3

    .line 335
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;

    invoke-static {v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->access$400(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;)Landroid/view/IRotationWatcher$Stub;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 337
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 339
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;

    new-instance v1, Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;

    invoke-static {v2}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->access$000(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-static {v0, v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->access$102(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    .line 340
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;

    invoke-static {v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->access$000(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;

    invoke-static {v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->access$500(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;

    invoke-static {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->access$600(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;)Landroid/content/IntentFilter;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method sendMessage(I)V
    .locals 0

    .line 369
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 370
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method sendMessage(II)V
    .locals 1

    const/4 v0, 0x0

    .line 359
    invoke-virtual {p0, p1, p2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 360
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method sendMessage(IIILjava/lang/Object;)V
    .locals 0

    .line 354
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 355
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method sendMessage(ILjava/lang/Object;)V
    .locals 0

    .line 364
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 365
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method unregisterReceivers()V
    .locals 2

    .line 345
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;

    invoke-static {v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->access$400(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;)Landroid/view/IRotationWatcher$Stub;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 347
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 350
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;

    invoke-static {v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->access$000(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;

    invoke-static {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->access$500(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;)Landroid/content/BroadcastReceiver;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
