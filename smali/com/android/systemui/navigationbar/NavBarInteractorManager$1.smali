.class Lcom/android/systemui/navigationbar/NavBarInteractorManager$1;
.super Ljava/lang/Object;
.source "NavBarInteractorManager.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPluginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/navigationbar/NavBarInteractorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/systemui/splugins/SPluginListener<",
        "Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/navigationbar/NavBarInteractorManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/navigationbar/NavBarInteractorManager;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavBarInteractorManager$1;->this$0:Lcom/android/systemui/navigationbar/NavBarInteractorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onPluginConnected(Lcom/samsung/systemui/splugins/SPlugin;Landroid/content/Context;)V
    .locals 0

    .line 32
    check-cast p1, Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/navigationbar/NavBarInteractorManager$1;->onPluginConnected(Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginConnected(Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;Landroid/content/Context;)V
    .locals 1

    const-string p2, "NavBarInteractorManager"

    const-string v0, "Plugin connected"

    .line 35
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavBarInteractorManager$1;->this$0:Lcom/android/systemui/navigationbar/NavBarInteractorManager;

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavBarInteractorManager;->mPlugin:Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;

    .line 38
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavBarInteractorManager;->mNavigationBar:Lcom/samsung/systemui/splugins/navigationbar/ExtendableNavigationBar;

    invoke-interface {p1, p0}, Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;->connect(Lcom/samsung/systemui/splugins/navigationbar/ExtendableNavigationBar;)V

    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;I)V
    .locals 0

    .line 32
    check-cast p1, Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/navigationbar/NavBarInteractorManager$1;->onPluginDisconnected(Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;I)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;I)V
    .locals 0

    const-string p1, "NavBarInteractorManager"

    const-string p2, "Plugin disconnected"

    .line 43
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavBarInteractorManager$1;->this$0:Lcom/android/systemui/navigationbar/NavBarInteractorManager;

    iget-object p1, p1, Lcom/android/systemui/navigationbar/NavBarInteractorManager;->mPlugin:Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;

    invoke-interface {p1}, Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;->disconnect()V

    .line 45
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavBarInteractorManager$1;->this$0:Lcom/android/systemui/navigationbar/NavBarInteractorManager;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavBarInteractorManager;->mPlugin:Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;

    return-void
.end method

.method public onPluginLoadFailed(I)V
    .locals 1

    const-string p1, "NavBarInteractorManager"

    const-string v0, "Plugin LoadFailed"

    .line 50
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavBarInteractorManager$1;->this$0:Lcom/android/systemui/navigationbar/NavBarInteractorManager;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavBarInteractorManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "policy_control"

    const-string v0, "null"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
