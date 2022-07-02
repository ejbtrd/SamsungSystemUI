.class final Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$AODShowState;
.super Landroid/database/ContentObserver;
.source "EdgeLightingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AODShowState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "handler"
        }
    .end annotation

    .line 597
    iput-object p1, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$AODShowState;->this$0:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    .line 598
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method getUri()Landroid/net/Uri;
    .locals 0

    const-string p0, "aod_show_state"

    .line 622
    invoke-static {p0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method isEnable()Z
    .locals 2

    .line 618
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$AODShowState;->this$0:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "aod_show_state"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public onChange(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selfChange"
        }
    .end annotation

    .line 603
    iget-object p1, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$AODShowState;->this$0:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    invoke-static {p1}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->access$500(Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$AODShowState;->isEnable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 604
    iget-object p1, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$AODShowState;->this$0:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->access$600(Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;Landroid/view/Window;)V

    .line 607
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$AODShowState;->this$0:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    invoke-static {p1}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->access$300(Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;)Lcom/samsung/android/edgelighting/container/NotificationEffect;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$AODShowState;->isEnable()Z

    move-result p1

    if-nez p1, :cond_1

    .line 608
    iget-object p1, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$AODShowState;->this$0:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    invoke-static {p1}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->access$300(Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;)Lcom/samsung/android/edgelighting/container/NotificationEffect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->updateMargin()V

    .line 610
    iget-object p1, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$AODShowState;->this$0:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    invoke-static {p1}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->access$300(Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;)Lcom/samsung/android/edgelighting/container/NotificationEffect;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$AODShowState;->this$0:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    invoke-static {p1}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->access$300(Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;)Lcom/samsung/android/edgelighting/container/NotificationEffect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->isTouchable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 611
    invoke-static {}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->access$700()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AOD_SHOW_STATE changed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$AODShowState;->isEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$AODShowState;->this$0:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Landroid/view/Window;->clearFlags(I)V

    :cond_1
    return-void
.end method
