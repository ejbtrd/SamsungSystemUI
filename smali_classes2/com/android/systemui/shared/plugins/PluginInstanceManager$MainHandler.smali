.class Lcom/android/systemui/shared/plugins/PluginInstanceManager$MainHandler;
.super Landroid/os/Handler;
.source "PluginInstanceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/plugins/PluginInstanceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/plugins/PluginInstanceManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/plugins/PluginInstanceManager;Landroid/os/Looper;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$MainHandler;->this$0:Lcom/android/systemui/shared/plugins/PluginInstanceManager;

    .line 233
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 238
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 261
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 253
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$MainHandler;->this$0:Lcom/android/systemui/shared/plugins/PluginInstanceManager;

    invoke-static {p0}, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->access$700(Lcom/android/systemui/shared/plugins/PluginInstanceManager;)Lcom/android/systemui/plugins/PluginListener;

    move-result-object p0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/plugins/Plugin;

    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/PluginListener;->onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V

    .line 254
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of p1, p0, Lcom/android/systemui/plugins/PluginFragment;

    if-nez p1, :cond_3

    .line 257
    check-cast p0, Lcom/android/systemui/plugins/Plugin;

    invoke-interface {p0}, Lcom/android/systemui/plugins/Plugin;->onDestroy()V

    goto :goto_0

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$MainHandler;->this$0:Lcom/android/systemui/shared/plugins/PluginInstanceManager;

    invoke-static {v0}, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->access$500(Lcom/android/systemui/shared/plugins/PluginInstanceManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/shared/plugins/PluginPrefs;->setHasPlugins(Landroid/content/Context;)V

    .line 242
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginInfo;

    .line 243
    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$MainHandler;->this$0:Lcom/android/systemui/shared/plugins/PluginInstanceManager;

    invoke-static {v1}, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->access$600(Lcom/android/systemui/shared/plugins/PluginInstanceManager;)Lcom/android/systemui/shared/plugins/PluginManagerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->handleWtfs()V

    .line 244
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of p1, p1, Lcom/android/systemui/plugins/PluginFragment;

    if-nez p1, :cond_2

    .line 247
    iget-object p1, v0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/plugins/Plugin;

    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$MainHandler;->this$0:Lcom/android/systemui/shared/plugins/PluginInstanceManager;

    invoke-static {v1}, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->access$500(Lcom/android/systemui/shared/plugins/PluginInstanceManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginInfo;->access$200(Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginInfo;)Landroid/content/Context;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/android/systemui/plugins/Plugin;->onCreate(Landroid/content/Context;Landroid/content/Context;)V

    .line 249
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$MainHandler;->this$0:Lcom/android/systemui/shared/plugins/PluginInstanceManager;

    invoke-static {p0}, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->access$700(Lcom/android/systemui/shared/plugins/PluginInstanceManager;)Lcom/android/systemui/plugins/PluginListener;

    move-result-object p0

    iget-object p1, v0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/plugins/Plugin;

    invoke-static {v0}, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginInfo;->access$200(Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginInfo;)Landroid/content/Context;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/plugins/PluginListener;->onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V

    :cond_3
    :goto_0
    return-void
.end method
