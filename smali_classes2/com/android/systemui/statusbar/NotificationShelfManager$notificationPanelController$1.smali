.class final Lcom/android/systemui/statusbar/NotificationShelfManager$notificationPanelController$1;
.super Ljava/lang/Object;
.source "NotificationShelfManager.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/PanelExpansionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationShelfManager;->setNotificationPanelController(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationShelfManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationShelfManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelfManager$notificationPanelController$1;->this$0:Lcom/android/systemui/statusbar/NotificationShelfManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPanelExpansionChanged(FZ)V
    .locals 0

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p1, p1, p2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 44
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationShelfManager$notificationPanelController$1;->this$0:Lcom/android/systemui/statusbar/NotificationShelfManager;

    invoke-static {p2}, Lcom/android/systemui/statusbar/NotificationShelfManager;->access$getIsfullyExpanded$p(Lcom/android/systemui/statusbar/NotificationShelfManager;)Z

    move-result p2

    if-eq p2, p1, :cond_1

    .line 45
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationShelfManager$notificationPanelController$1;->this$0:Lcom/android/systemui/statusbar/NotificationShelfManager;

    invoke-static {p2, p1}, Lcom/android/systemui/statusbar/NotificationShelfManager;->access$setIsfullyExpanded$p(Lcom/android/systemui/statusbar/NotificationShelfManager;Z)V

    .line 46
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager$notificationPanelController$1;->this$0:Lcom/android/systemui/statusbar/NotificationShelfManager;

    invoke-static {p0}, Lcom/android/systemui/statusbar/NotificationShelfManager;->access$getIsfullyExpanded$p(Lcom/android/systemui/statusbar/NotificationShelfManager;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationShelfManager;->startButtonsAnimation(Z)V

    :cond_1
    return-void
.end method
