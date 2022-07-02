.class Lcom/android/systemui/qs/bar/MediaDevicesBar$3;
.super Ljava/lang/Object;
.source "MediaDevicesBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/bar/MediaDevicesBar;->inflateViews(Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/bar/MediaDevicesBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/bar/MediaDevicesBar;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar$3;->this$0:Lcom/android/systemui/qs/bar/MediaDevicesBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 196
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QPPE1005"

    const-string v1, "QUICK_PANEL_LAYOUT"

    invoke-static {p1, v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendRunstoneEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_STYLE:Z

    if-eqz p1, :cond_0

    .line 200
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar$3;->this$0:Lcom/android/systemui/qs/bar/MediaDevicesBar;

    invoke-static {p0}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->access$100(Lcom/android/systemui/qs/bar/MediaDevicesBar;)Lcom/android/systemui/controls/controller/CustomDeviceControlsController;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/controls/controller/CustomDeviceControlsController;->start()V

    goto :goto_0

    .line 202
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar$3;->this$0:Lcom/android/systemui/qs/bar/MediaDevicesBar;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->access$000(Lcom/android/systemui/qs/bar/MediaDevicesBar;I)V

    :goto_0
    return-void
.end method
