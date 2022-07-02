.class Lcom/android/systemui/qs/SecAutoTileManager$4;
.super Landroid/content/BroadcastReceiver;
.source "SecAutoTileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/SecAutoTileManager;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/AutoAddTracker$Builder;Lcom/android/systemui/qs/QSTileHost;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/ManagedProfileController;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/SecAutoTileManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/SecAutoTileManager;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/android/systemui/qs/SecAutoTileManager$4;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 202
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AutoTileManager"

    const-string v0, "DemoResetStarted"

    .line 203
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "com.samsung.sea.rm.DEMO_RESET_STARTED"

    .line 204
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 205
    iget-object p1, p0, Lcom/android/systemui/qs/SecAutoTileManager$4;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    invoke-static {p1}, Lcom/android/systemui/qs/SecAutoTileManager;->access$400(Lcom/android/systemui/qs/SecAutoTileManager;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->isShopDemo(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 206
    iget-object p0, p0, Lcom/android/systemui/qs/SecAutoTileManager$4;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    invoke-static {p0}, Lcom/android/systemui/qs/SecAutoTileManager;->access$000(Lcom/android/systemui/qs/SecAutoTileManager;)Lcom/android/systemui/qs/QSTileHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileHost;->resetTileList()V

    :cond_0
    return-void
.end method
