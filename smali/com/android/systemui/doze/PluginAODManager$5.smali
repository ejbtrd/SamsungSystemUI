.class Lcom/android/systemui/doze/PluginAODManager$5;
.super Ljava/lang/Object;
.source "PluginAODManager.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


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

    .line 335
    iput-object p1, p0, Lcom/android/systemui/doze/PluginAODManager$5;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDozeAmountChanged(FF)V
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$5;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/doze/PluginAODManager;->access$100(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/aod/PluginAOD;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$5;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/doze/PluginAODManager;->access$100(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/aod/PluginAOD;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/plugins/aod/PluginAOD;->onDozeAmountChanged(FF)V

    .line 341
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager$5;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p1}, Lcom/android/systemui/doze/PluginAODManager;->access$1200(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 342
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager$5;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p1}, Lcom/android/systemui/doze/PluginAODManager;->access$1200(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onDozeAmountChanged(F)V

    .line 344
    :cond_1
    sget-boolean p1, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    if-eqz p1, :cond_2

    .line 345
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager$5;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p1}, Lcom/android/systemui/doze/PluginAODManager;->access$1300(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/cover/PluginCover;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 346
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$5;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$1300(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/cover/PluginCover;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/android/systemui/plugins/cover/PluginCover;->onDozeAmountChanged(F)V

    :cond_2
    return-void
.end method
