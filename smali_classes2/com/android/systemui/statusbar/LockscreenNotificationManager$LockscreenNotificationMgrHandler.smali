.class final Lcom/android/systemui/statusbar/LockscreenNotificationManager$LockscreenNotificationMgrHandler;
.super Landroid/os/Handler;
.source "LockscreenNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/LockscreenNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LockscreenNotificationMgrHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/LockscreenNotificationManager;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/LockscreenNotificationManager;Landroid/os/Looper;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$LockscreenNotificationMgrHandler;->this$0:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    .line 267
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/LockscreenNotificationManager;Landroid/os/Looper;Lcom/android/systemui/statusbar/LockscreenNotificationManager$1;)V
    .locals 0

    .line 265
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/LockscreenNotificationManager$LockscreenNotificationMgrHandler;-><init>(Lcom/android/systemui/statusbar/LockscreenNotificationManager;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 271
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 279
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$LockscreenNotificationMgrHandler;->this$0:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->access$1100(Lcom/android/systemui/statusbar/LockscreenNotificationManager;)Lcom/android/systemui/statusbar/LockscreenNotificationManagerLogger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/LockscreenNotificationManagerLogger;->logNotifList(Ljava/util/ArrayList;)V

    .line 281
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$LockscreenNotificationMgrHandler;->this$0:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->access$1000(Lcom/android/systemui/statusbar/LockscreenNotificationManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 282
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$LockscreenNotificationMgrHandler;->this$0:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->access$1000(Lcom/android/systemui/statusbar/LockscreenNotificationManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;->onNotificationInfoUpdated(Ljava/util/ArrayList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 274
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$LockscreenNotificationMgrHandler;->this$0:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->access$1000(Lcom/android/systemui/statusbar/LockscreenNotificationManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 275
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$LockscreenNotificationMgrHandler;->this$0:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->access$1000(Lcom/android/systemui/statusbar/LockscreenNotificationManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;->onNotificationTypeChanged(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method
