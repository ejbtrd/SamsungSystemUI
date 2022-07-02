.class Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$1;
.super Ljava/lang/Object;
.source "PluginLockFaceWidget.java"

# interfaces
.implements Lcom/android/systemui/plugins/facewidget/PluginClockProvider$ClockCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;


# direct methods
.method constructor <init>(Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$1;->this$0:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAODClockStyleChanged()V
    .locals 1

    const-string p0, "PluginLockFaceWidget"

    const-string v0, "onAODClockStyleChanged() "

    .line 347
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onClockColorChanged()V
    .locals 1

    const-string p0, "PluginLockFaceWidget"

    const-string v0, "onClockColorChanged() "

    .line 342
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onClockPackageChanged()V
    .locals 1

    const-string p0, "PluginLockFaceWidget"

    const-string v0, "onClockPackageChanged() "

    .line 312
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onClockStyleChanged(Z)V
    .locals 6

    .line 317
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$1;->this$0:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    iget-wide v1, v0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const-string v2, "PluginLockFaceWidget"

    if-eqz v1, :cond_5

    iget v0, v0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackValue:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 321
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v3, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$1;->this$0:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    iget-wide v4, v3, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x1f40

    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    .line 322
    iget v0, v3, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackValue:I

    invoke-static {v3}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->access$000(Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;)Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->getLockClockType()I

    move-result v1

    if-ne v0, v1, :cond_1

    const-string p0, "onClockStyleChanged() ignored"

    .line 323
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$1;->this$0:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    invoke-static {v0}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->access$100(Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 328
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$1;->this$0:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    invoke-static {v0}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->access$200(Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;)V

    .line 330
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClockStyleChanged() mClockRecoverType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$1;->this$0:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    invoke-static {v1}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->access$300(Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$1;->this$0:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    invoke-static {v0}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->access$300(Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    if-eqz p1, :cond_3

    .line 333
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$1;->this$0:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->reset(Z)V

    goto :goto_0

    .line 335
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$1;->this$0:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->recover()V

    :cond_4
    :goto_0
    return-void

    :cond_5
    :goto_1
    const-string p0, "onClockStyleChanged() wrong state"

    .line 318
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
