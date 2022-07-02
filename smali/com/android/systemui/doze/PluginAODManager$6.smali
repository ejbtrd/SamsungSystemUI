.class Lcom/android/systemui/doze/PluginAODManager$6;
.super Ljava/lang/Object;
.source "PluginAODManager.java"

# interfaces
.implements Lcom/android/systemui/plugins/aod/PluginAOD$UICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/PluginAODManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/doze/PluginAODManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/PluginAODManager;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/android/systemui/doze/PluginAODManager$6;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeyguardOrientation()I
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$6;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/doze/PluginAODManager;->access$1500(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 364
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$6;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$1600(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->getKeyguardOrientation()I

    move-result p0

    return p0
.end method

.method public registerAODDoubleTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 2

    const-string v0, "PluginAODManager"

    const-string/jumbo v1, "registerAODDoubleTouchListener() "

    .line 368
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$6;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/doze/PluginAODManager;->access$1400(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 370
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$6;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$1400(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->registerAODDoubleTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public setBottomArea(Landroid/view/View;)V
    .locals 2

    const-string v0, "PluginAODManager"

    const-string/jumbo v1, "setBottomArea() "

    .line 354
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$6;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/doze/PluginAODManager;->access$1400(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 356
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$6;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$1400(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->setBottomDozeArea(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public unregisterAODDoubleTouchListener()V
    .locals 2

    const-string v0, "PluginAODManager"

    const-string/jumbo v1, "unregisterAODDoubleTouchListener() "

    .line 375
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$6;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/doze/PluginAODManager;->access$1400(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 377
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$6;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$1400(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->unregisterAODDoubleTouchListener()V

    :cond_0
    return-void
.end method
