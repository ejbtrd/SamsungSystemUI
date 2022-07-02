.class Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$24;
.super Ljava/lang/Object;
.source "NotificationPanelViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setNextUpdateHorizontalPosition(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

.field final synthetic val$x:F


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;F)V
    .locals 0

    .line 7659
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$24;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$24;->val$x:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 7662
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$24;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$24;->val$x:F

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateHorizontalPanelPosition(F)V

    return-void
.end method
