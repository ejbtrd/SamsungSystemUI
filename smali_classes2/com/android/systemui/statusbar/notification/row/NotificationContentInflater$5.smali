.class Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;
.super Ljava/lang/Object;
.source "NotificationContentInflater.java"

# interfaces
.implements Landroid/widget/RemoteViews$OnViewAppliedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->applyRemoteView(Ljava/util/concurrent/Executor;ZLcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;IILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZLandroid/widget/RemoteViews$InteractionHandler;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Lcom/android/systemui/statusbar/notification/row/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$applyCallback:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;

.field final synthetic val$callback:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;

.field final synthetic val$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field final synthetic val$existingView:Landroid/view/View;

.field final synthetic val$existingWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

.field final synthetic val$inflationId:I

.field final synthetic val$isNewView:Z

.field final synthetic val$newContentView:Landroid/widget/RemoteViews;

.field final synthetic val$parentLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

.field final synthetic val$reInflateFlags:I

.field final synthetic val$remoteViewCache:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;

.field final synthetic val$remoteViewClickHandler:Landroid/widget/RemoteViews$InteractionHandler;

.field final synthetic val$result:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

.field final synthetic val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field final synthetic val$runningInflations:Ljava/util/HashMap;


# direct methods
.method public static synthetic $r8$lambda$T_OH8RAa_5LLuRV7A3Np9P33NDA(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->lambda$onViewApplied$0(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_hCTIeXWQqWcqWlr-1EoXVw2UT0(Lcom/android/systemui/noticolorpicker/NotificationColorPicker;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->lambda$onViewApplied$2(Lcom/android/systemui/noticolorpicker/NotificationColorPicker;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qBvM_-jqdaRvt_9GY6oSCP0ryqY(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->lambda$onViewApplied$1(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZLcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;Ljava/util/HashMap;ILcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;ILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/view/View;Landroid/widget/RemoteViews;Lcom/android/systemui/statusbar/notification/row/NotificationContentView;Landroid/widget/RemoteViews$InteractionHandler;)V
    .locals 0

    .line 507
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$isNewView:Z

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$applyCallback:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$existingWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$runningInflations:Ljava/util/HashMap;

    iput p6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$inflationId:I

    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$result:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

    iput p8, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$reInflateFlags:I

    iput-object p9, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$remoteViewCache:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;

    iput-object p10, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$callback:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;

    iput-object p11, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iput-object p12, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$existingView:Landroid/view/View;

    iput-object p13, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$newContentView:Landroid/widget/RemoteViews;

    iput-object p14, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$parentLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    iput-object p15, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$remoteViewClickHandler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onViewApplied$0(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 0

    .line 534
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$onViewApplied$1(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 1

    .line 535
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 536
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$bool;->theme_designer_quick_panel_turned_on:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static synthetic lambda$onViewApplied$2(Lcom/android/systemui/noticolorpicker/NotificationColorPicker;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 1

    .line 537
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isDimmed()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->updateAllTextViewColors(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 4

    .line 556
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$existingView:Landroid/view/View;

    .line 557
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$isNewView:Z

    if-eqz v1, :cond_0

    .line 558
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$newContentView:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$result:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->packageContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$parentLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$remoteViewClickHandler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 563
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$newContentView:Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$result:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->packageContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$remoteViewClickHandler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-virtual {v1, v2, v0, v3}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;)V

    :goto_0
    const-string v1, "NotifContentInflater"

    const-string v2, "Async Inflation failed but normal inflation finished normally."

    .line 568
    invoke-static {v1, v2, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 570
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->onViewApplied(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 572
    :catch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$runningInflations:Ljava/util/HashMap;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$inflationId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$runningInflations:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$callback:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;

    invoke-static {v0, p1, v1, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->access$1500(Ljava/util/HashMap;Ljava/lang/Exception;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;)V

    :goto_1
    return-void
.end method

.method public onViewApplied(Landroid/view/View;)V
    .locals 10

    .line 518
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$isNewView:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 519
    invoke-virtual {p1, v1}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 520
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$applyCallback:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;->setResultView(Landroid/view/View;)V

    goto :goto_0

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$existingWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    if-eqz v0, :cond_1

    .line 522
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->onReinflated()V

    .line 524
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$runningInflations:Ljava/util/HashMap;

    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$inflationId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$result:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

    iget v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$reInflateFlags:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$remoteViewCache:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$runningInflations:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$callback:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;

    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v9, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static/range {v3 .. v9}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->access$1400(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;ILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    .line 528
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_5

    .line 529
    const-class v0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;

    .line 533
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/noticolorpicker/NotificationColorPicker;)V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    sget-object v3, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5$$ExternalSyntheticLambda2;

    .line 534
    invoke-virtual {v0, v3}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    sget-object v3, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5$$ExternalSyntheticLambda3;

    .line 535
    invoke-virtual {v0, v3}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    new-instance v3, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/noticolorpicker/NotificationColorPicker;)V

    .line 537
    invoke-virtual {v0, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 540
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v2, v0}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->isNeedToUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isDimmed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 541
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->getAppPrimaryColor(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)I

    move-result v4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v2, v0}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->isGrayScaleIcon(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$existingWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->updateBig(Landroid/view/View;IZLcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;ZLcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 544
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isPinned()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 545
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isCustomNotification()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isCustomBigNotification()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isCustomHeadsupNotification()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isCustomPublicNotification()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 546
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->applyHeadsUpBackGround(Z)V

    :cond_5
    return-void
.end method

.method public onViewInflated(Landroid/view/View;)V
    .locals 1

    .line 511
    instance-of v0, p1, Lcom/android/internal/widget/ImageMessageConsumer;

    if-eqz v0, :cond_0

    .line 512
    check-cast p1, Lcom/android/internal/widget/ImageMessageConsumer;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getImageResolver()Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/internal/widget/ImageMessageConsumer;->setImageResolver(Lcom/android/internal/widget/ImageResolver;)V

    :cond_0
    return-void
.end method
