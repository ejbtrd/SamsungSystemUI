.class public Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;
.super Ljava/lang/Object;
.source "DragAndDropClientRecord.java"


# instance fields
.field final mClient:Lcom/samsung/android/multiwindow/IDragAndDropClient;

.field final mDisplayId:I


# direct methods
.method private constructor <init>(Lcom/samsung/android/multiwindow/IDragAndDropClient;I)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;->mClient:Lcom/samsung/android/multiwindow/IDragAndDropClient;

    .line 66
    iput p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;->mDisplayId:I

    return-void
.end method

.method static from(Landroid/content/ClipData;I)Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;
    .locals 1

    .line 42
    invoke-static {p0}, Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;->getDragAndDropClient(Landroid/content/ClipData;)Lcom/samsung/android/multiwindow/IDragAndDropClient;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 46
    :cond_0
    new-instance v0, Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;-><init>(Lcom/samsung/android/multiwindow/IDragAndDropClient;I)V

    return-object v0
.end method

.method private static getDragAndDropClient(Landroid/content/ClipData;)Lcom/samsung/android/multiwindow/IDragAndDropClient;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 50
    invoke-virtual {p0}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 53
    invoke-virtual {p0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    const-string v1, "com.samsung.android.intent.extra.DRAG_AND_DROP_CLIENT"

    .line 57
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v0

    .line 61
    :cond_2
    invoke-static {p0}, Lcom/samsung/android/multiwindow/IDragAndDropClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IDragAndDropClient;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method


# virtual methods
.method connect(Lcom/samsung/android/multiwindow/IDragAndDropControllerProxy;)V
    .locals 1

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;->mClient:Lcom/samsung/android/multiwindow/IDragAndDropClient;

    invoke-interface {p1}, Lcom/samsung/android/multiwindow/IDragAndDropControllerProxy;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;->mDisplayId:I

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/multiwindow/IDragAndDropClient;->onConnected(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "DragAndDropClient"

    const-string p1, "Failed to connect."

    .line 73
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method disconnect()V
    .locals 1

    .line 79
    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;->mClient:Lcom/samsung/android/multiwindow/IDragAndDropClient;

    invoke-interface {p0}, Lcom/samsung/android/multiwindow/IDragAndDropClient;->onDisconnected()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "DragAndDropClient"

    const-string v0, "Failed to disconnect."

    .line 81
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method getInitialDropTargetVisible()Z
    .locals 1

    .line 88
    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;->mClient:Lcom/samsung/android/multiwindow/IDragAndDropClient;

    invoke-interface {p0}, Lcom/samsung/android/multiwindow/IDragAndDropClient;->getInitialDropTargetVisible()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "DragAndDropClient"

    const-string v0, "Failed to disconnect."

    .line 90
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method
