.class Lcom/samsung/android/systemui/multistar/MultiStarManager$1;
.super Ljava/lang/Object;
.source "MultiStarManager.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPluginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/multistar/MultiStarManager;-><init>(Landroid/content/Context;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/systemui/splugins/SPluginListener<",
        "Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/multistar/MultiStarManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/multistar/MultiStarManager;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager$1;->this$0:Lcom/samsung/android/systemui/multistar/MultiStarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onPluginConnected(Lcom/samsung/systemui/splugins/SPlugin;Landroid/content/Context;)V
    .locals 0

    .line 47
    check-cast p1, Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/systemui/multistar/MultiStarManager$1;->onPluginConnected(Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginConnected(Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;Landroid/content/Context;)V
    .locals 1

    .line 50
    invoke-static {}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "onPluginConnected"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-static {p1}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->access$102(Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;)Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    .line 52
    invoke-static {}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->access$100()Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager$1;->this$0:Lcom/samsung/android/systemui/multistar/MultiStarManager;

    invoke-static {p0}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->access$200(Lcom/samsung/android/systemui/multistar/MultiStarManager;)Lcom/samsung/systemui/splugins/multistar/PluginMultiStarSystemProxy;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;->init(Lcom/samsung/systemui/splugins/multistar/PluginMultiStarSystemProxy;)V

    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;I)V
    .locals 0

    .line 47
    check-cast p1, Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/systemui/multistar/MultiStarManager$1;->onPluginDisconnected(Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;I)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;I)V
    .locals 0

    .line 57
    invoke-static {}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "onPluginDisconnected"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 58
    invoke-static {p0}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->access$102(Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;)Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    return-void
.end method
