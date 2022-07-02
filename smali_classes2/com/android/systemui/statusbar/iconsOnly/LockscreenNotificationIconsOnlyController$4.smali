.class Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$4;
.super Ljava/lang/Object;
.source "LockscreenNotificationIconsOnlyController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$4;->this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 220
    iget-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$4;->this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    .line 221
    invoke-static {p1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->access$600(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->isNeedDetailCard()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 222
    const-class p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 223
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->userActivity()V

    .line 224
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$4;->this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->access$600(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->openDetailNotification()V

    goto :goto_0

    .line 226
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$4;->this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->access$700(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->goToLockedShade(Landroid/view/View;)V

    :goto_0
    return-void
.end method
