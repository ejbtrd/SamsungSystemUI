.class Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$23;
.super Ljava/lang/Object;
.source "NotificationPanelViewController.java"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
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

    .line 7468
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 2

    .line 7471
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$17300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    move-result-object p3

    if-eqz p3, :cond_0

    const-string/jumbo p3, "top"

    .line 7472
    invoke-static {p3}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    move-result-wide v0

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    .line 7473
    sget-object p1, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "updateStyle KeyguardPunchHoleVIView setFaceRecognitionVI"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7474
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$17300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->setFaceRecognitionVI()V

    :cond_0
    return-void
.end method
