.class final Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$SubscreenNotificationPresentation;
.super Landroid/app/Dialog;
.source "SubscreenNotificationController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SubscreenNotificationPresentation"
.end annotation


# instance fields
.field private contents:Landroid/view/ViewGroup;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Landroid/content/Context;Landroid/view/Display;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/Display;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/Display;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string/jumbo p3, "this$0"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "context"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 483
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$SubscreenNotificationPresentation;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    sget p1, Lcom/android/systemui/R$style;->SubscreenNotification:I

    invoke-direct {p0, p2, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 523
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$SubscreenNotificationPresentation;->contents:Landroid/view/ViewGroup;

    .line 524
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-eqz p1, :cond_0

    .line 525
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$SubscreenNotificationPresentation;->contents:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 527
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$SubscreenNotificationPresentation;->contents:Landroid/view/ViewGroup;

    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 530
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 p2, p2, 0x10

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 531
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 532
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const-string p3, "getWindow().getAttributes()"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 p3, 0xbb8

    .line 534
    invoke-virtual {p1, p3, p4}, Landroid/view/WindowManager$LayoutParams;->semSetScreenTimeout(J)V

    .line 540
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 542
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const-string p3, "SubScreenNotification"

    invoke-virtual {p1, p3}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 543
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    return-void
.end method


# virtual methods
.method public final getContents()Landroid/view/ViewGroup;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 484
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$SubscreenNotificationPresentation;->contents:Landroid/view/ViewGroup;

    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 486
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 487
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$SubscreenNotificationPresentation;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$getCurrentEntry$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v0, " PRESENTATION ON - "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "S.S.N."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7e5

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 489
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$SubscreenNotificationPresentation;->contents:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 490
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x700

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 494
    sget-boolean p1, Lcom/android/systemui/QpRune;->NOTI_CLEAR_COVER_NOTIFICATION:Z

    if-nez p1, :cond_1

    .line 495
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 496
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/16 v0, 0x8

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 498
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    .line 499
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    return-void
.end method

.method protected onStop()V
    .locals 6

    .line 503
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 504
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$SubscreenNotificationPresentation;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$getCurrentEntry$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v2, " PRESENTATION OFF - "

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "S.S.N."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$SubscreenNotificationPresentation;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$getWakelock$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Lcom/android/systemui/util/wakelock/SettableWakeLock;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    .line 506
    :goto_1
    sget-boolean v0, Lcom/android/systemui/QpRune;->NOTI_SUBSCREEN_NOTIFICATION_SECOND:Z

    if-nez v0, :cond_2

    sget-boolean v4, Lcom/android/systemui/QpRune;->NOTI_CLEAR_COVER_NOTIFICATION:Z

    if-eqz v4, :cond_5

    .line 507
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$SubscreenNotificationPresentation;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$getScreenOnwakelock$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Lcom/android/systemui/util/wakelock/SettableWakeLock;

    move-result-object v4

    if-nez v4, :cond_3

    move-object v4, v1

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->isAcquired()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :goto_2
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 508
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$SubscreenNotificationPresentation;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$getScreenOnwakelock$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Lcom/android/systemui/util/wakelock/SettableWakeLock;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v4, v3}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    .line 510
    :cond_5
    :goto_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$SubscreenNotificationPresentation;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {v4, v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$setPresentation$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$SubscreenNotificationPresentation;)V

    .line 511
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$SubscreenNotificationPresentation;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {v4, v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$setNotiTemplate$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;)V

    .line 512
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$SubscreenNotificationPresentation;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {v4, v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$setCurrentEntry$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 513
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$SubscreenNotificationPresentation;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {v4, v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$setClickedRunnable$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Ljava/lang/Runnable;)V

    .line 515
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$SubscreenNotificationPresentation;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$setNotiPopupType$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;I)V

    if-nez v0, :cond_6

    .line 516
    sget-boolean v0, Lcom/android/systemui/QpRune;->NOTI_CLEAR_COVER_NOTIFICATION:Z

    if-eqz v0, :cond_7

    :cond_6
    const-string v0, " RELEASE DOZE STATE - onStop"

    .line 517
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$SubscreenNotificationPresentation;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$getPluginAODManagerLazy$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Ldagger/Lazy;

    move-result-object p0

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/doze/PluginAODManager;

    const/16 v0, 0x40

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/doze/PluginAODManager;->requestDozeState(IZ)V

    :cond_7
    return-void
.end method
