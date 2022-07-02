.class Lcom/android/systemui/qs/QSTileHost$3;
.super Ljava/lang/Object;
.source "QSTileHost.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSTileHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSTileHost;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    .line 424
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHost$3;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceProvisionedChanged()V
    .locals 4

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeviceProvisionedChanged : isDeviceProvisioned = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost$3;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {v1}, Lcom/android/systemui/qs/QSTileHost;->access$500(Lcom/android/systemui/qs/QSTileHost;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSTileHost"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost$3;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {v0}, Lcom/android/systemui/qs/QSTileHost;->access$500(Lcom/android/systemui/qs/QSTileHost;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost$3;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {v0}, Lcom/android/systemui/qs/QSTileHost;->access$600(Lcom/android/systemui/qs/QSTileHost;)Ljava/lang/String;

    move-result-object v0

    .line 430
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost$3;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {v1}, Lcom/android/systemui/qs/QSTileHost;->access$700(Lcom/android/systemui/qs/QSTileHost;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QsCustomTileList"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/qs/QSTileHost$3;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTileHost;->getUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/systemui/Prefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost$3;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {v0}, Lcom/android/systemui/qs/QSTileHost;->access$500(Lcom/android/systemui/qs/QSTileHost;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
