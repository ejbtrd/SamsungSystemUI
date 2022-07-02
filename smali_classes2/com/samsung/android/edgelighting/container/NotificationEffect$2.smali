.class Lcom/samsung/android/edgelighting/container/NotificationEffect$2;
.super Ljava/lang/Object;
.source "NotificationEffect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/edgelighting/container/NotificationEffect;->launchPopupWindow(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;


# direct methods
.method constructor <init>(Lcom/samsung/android/edgelighting/container/NotificationEffect;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 290
    iput-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$2;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 295
    :try_start_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 296
    iget-object v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$2;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-static {v1}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->access$100(Lcom/samsung/android/edgelighting/container/NotificationEffect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 297
    iget-object v2, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$2;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-static {v2}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->access$200(Lcom/samsung/android/edgelighting/container/NotificationEffect;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "launchPopupWindow: bounds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v2, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$2;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->access$302(Lcom/samsung/android/edgelighting/container/NotificationEffect;Z)Z

    .line 301
    invoke-static {}, Lcom/samsung/android/edgelighting/reflection/ReflectionContainer;->getPendingIntent()Lcom/samsung/android/edgelighting/reflection/app/PendingIntentReflection;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$2;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    iget-object v4, v4, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v4}, Lcom/samsung/android/edgelighting/reflection/app/PendingIntentReflection;->isActivity(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 302
    iget-object v2, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$2;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    iget-object v4, v2, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_0

    .line 303
    invoke-static {v2}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->access$200(Lcom/samsung/android/edgelighting/container/NotificationEffect;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isActivity: false "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$2;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    iget-object v5, v5, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$2;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->access$302(Lcom/samsung/android/edgelighting/container/NotificationEffect;Z)Z

    :cond_1
    if-eqz v1, :cond_2

    .line 310
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 311
    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    .line 319
    iget-object v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$2;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    iget-object v4, v1, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 320
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual/range {v4 .. v11}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 324
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$2;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    iget-object v1, v0, Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;->mEdgeListener:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$OnEdgeAnimationListener;

    if-eqz v1, :cond_3

    .line 325
    invoke-static {v0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->access$300(Lcom/samsung/android/edgelighting/container/NotificationEffect;)Z

    move-result v0

    invoke-interface {v1, v3, v0}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$OnEdgeAnimationListener;->onFling(ZZ)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 328
    iget-object v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$2;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    iget-object v2, v1, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_3

    .line 329
    invoke-static {v1}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->access$200(Lcom/samsung/android/edgelighting/container/NotificationEffect;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " pending intent from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$2;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is canceled "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method
