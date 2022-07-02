.class final Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$HotspotControllerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HotspotControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HotspotControllerReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$HotspotControllerReceiver;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$1;)V
    .locals 0

    .line 422
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$HotspotControllerReceiver;-><init>(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 425
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.android.net.wifi.WIFI_AP_STA_STATE_CHANGED"

    .line 426
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 428
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$HotspotControllerReceiver;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    const/4 v0, 0x0

    const-string v1, "STA_COUNT"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$402(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;I)I

    .line 429
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onReceive :ACTION_WIFI_AP_STA_STATE_CHANGED numsta:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$HotspotControllerReceiver;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-static {p2}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$400(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HotspotController"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$HotspotControllerReceiver;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$500(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;Z)V

    :cond_0
    return-void
.end method
