.class Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$9;
.super Ljava/lang/Object;
.source "NotificationPanelViewController.java"

# interfaces
.implements Lcom/android/systemui/facewidget/KeyguardStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->replaceToFaceWidget()Lcom/android/systemui/facewidget/KeyguardStatusBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 1440
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$9;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDozing()Z
    .locals 0

    .line 1448
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$9;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$1300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result p0

    return p0
.end method

.method public isKeyguardState()Z
    .locals 0

    .line 1443
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$9;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result p0

    return p0
.end method

.method public setFullScreenMode(ZJ)V
    .locals 1

    const/4 v0, 0x0

    .line 1453
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$9;->setFullScreenMode(ZJLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public setFullScreenMode(ZJLandroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 1458
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$9;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setFullScreenMode(ZJLandroid/animation/Animator$AnimatorListener;)V

    .line 1460
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$9;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$1000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceWidgetFullScreenMode(Z)V

    return-void
.end method

.method public setMusicShown(Z)V
    .locals 1

    .line 1466
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$9;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setMusicShown(Z)V

    .line 1468
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$9;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1469
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$9;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->setMusicShown(Z)V

    :cond_0
    return-void
.end method

.method public startActivity(Landroid/app/PendingIntent;)V
    .locals 2

    .line 1476
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_FACE_WIDGET:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setUnlockTrigger(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;)V

    .line 1478
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$9;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 1479
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$1700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$9$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$9$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    .line 1478
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;ZI)V
    .locals 2

    .line 1485
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_FACE_WIDGET:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setUnlockTrigger(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;)V

    .line 1487
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$9;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3202(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z

    .line 1488
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$9;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZI)V

    return-void
.end method

.method public userActivity()V
    .locals 0

    .line 1493
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$9;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->userActivity()V

    return-void
.end method
