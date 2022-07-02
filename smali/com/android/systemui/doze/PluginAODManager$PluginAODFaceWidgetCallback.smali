.class Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCallback;
.super Ljava/lang/Object;
.source "PluginAODManager.java"

# interfaces
.implements Lcom/android/systemui/plugins/aod/PluginAODFaceWidgetManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/PluginAODManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PluginAODFaceWidgetCallback"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/systemui/doze/PluginAODManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/PluginAODManager;Landroid/content/Context;)V
    .locals 0

    .line 1173
    iput-object p1, p0, Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1174
    iput-object p2, p0, Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCallback;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getClockSidePadding()I
    .locals 2

    .line 1221
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCallback;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1225
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getClockSidePadding() "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "PluginAODManager"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getClockType()I
    .locals 2

    .line 1205
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/doze/PluginAODManager;->access$2600(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1206
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$2600(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->getLastLockClockType()I

    move-result p0

    .line 1207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getClockType() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginAODManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0
.end method

.method public getCurrentPageKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "servicebox_clock"

    return-object p0
.end method

.method public getMinTopMargin()I
    .locals 2

    .line 1239
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/doze/PluginAODManager;->access$2600(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1240
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$2600(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->getMinTopMargin(Z)I

    move-result p0

    .line 1241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMinTopMargin() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginAODManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getPage(Ljava/lang/String;)Landroid/view/View;
    .locals 0

    .line 1189
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPluginLockClockGravity()I
    .locals 2

    .line 1266
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getPluginLockClockGravity() "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "PluginAODManager"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getPluginLockTopMargin()I
    .locals 2

    .line 1255
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getPluginLockTopMargin() "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "PluginAODManager"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public hasMultiplePages()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public requestAODState(ZZ)V
    .locals 2

    .line 1231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestAODState() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginAODManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/doze/PluginAODManager;->access$2600(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$2600(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->requestAODState(ZZ)V

    :cond_0
    return-void
.end method

.method public setPage(Ljava/lang/String;)V
    .locals 1

    .line 1197
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 1200
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setPage: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PluginAODManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setPageTransformer(Z)V
    .locals 1

    .line 1216
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setPageTransformer() "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PluginAODManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
