.class Lcom/android/wm/shell/pip/phone/PipController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "PipController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/pip/phone/PipController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final mEdgeHandleSizePercentUri:Landroid/net/Uri;

.field private final mEdgeHandlerPositionPercentUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/wm/shell/pip/phone/PipController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/phone/PipController;Landroid/os/Handler;)V
    .locals 3

    .line 1005
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController$SettingsObserver;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    .line 1006
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p2, "edge_handle_size_percent"

    .line 1001
    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController$SettingsObserver;->mEdgeHandleSizePercentUri:Landroid/net/Uri;

    const-string v0, "edge_handler_position_percent"

    .line 1003
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$SettingsObserver;->mEdgeHandlerPositionPercentUri:Landroid/net/Uri;

    .line 1007
    invoke-static {p1}, Lcom/android/wm/shell/pip/phone/PipController;->access$1100(Lcom/android/wm/shell/pip/phone/PipController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 1008
    invoke-virtual {p1, p2, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1010
    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 1020
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController$SettingsObserver;->mEdgeHandleSizePercentUri:Landroid/net/Uri;

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController$SettingsObserver;->mEdgeHandlerPositionPercentUri:Landroid/net/Uri;

    .line 1021
    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 1022
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController$SettingsObserver;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {p1}, Lcom/android/wm/shell/pip/phone/PipController;->access$200(Lcom/android/wm/shell/pip/phone/PipController;)Lcom/android/wm/shell/pip/PipBoundsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipBoundsState;->isStashed()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1023
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController$SettingsObserver;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {p1}, Lcom/android/wm/shell/pip/phone/PipController;->access$500(Lcom/android/wm/shell/pip/phone/PipController;)Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->getMotionHelper()Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    move-result-object p1

    .line 1024
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$SettingsObserver;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    .line 1025
    invoke-static {p0}, Lcom/android/wm/shell/pip/phone/PipController;->access$200(Lcom/android/wm/shell/pip/phone/PipController;)Lcom/android/wm/shell/pip/PipBoundsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->adjustPipBoundsForEdge(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    .line 1024
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->movePip(Landroid/graphics/Rect;)V

    :cond_3
    return-void
.end method
