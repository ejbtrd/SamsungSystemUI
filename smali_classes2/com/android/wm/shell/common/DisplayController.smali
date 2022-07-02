.class public Lcom/android/wm/shell/common/DisplayController;
.super Ljava/lang/Object;
.source "DisplayController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;,
        Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;,
        Lcom/android/wm/shell/common/DisplayController$DisplayRecord;
    }
.end annotation


# instance fields
.field private final mAltMainDisplayRecord:Lcom/android/wm/shell/common/DisplayController$DisplayRecord;

.field private final mChangeController:Lcom/android/wm/shell/common/DisplayChangeController;

.field private final mContext:Landroid/content/Context;

.field private final mDisplayChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayContainerListener:Landroid/view/IDisplayWindowListener;

.field private final mDisplays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/wm/shell/common/DisplayController$DisplayRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private mSettingsObserver:Landroid/database/ContentObserver;

.field private mTaskBarPosition:I

.field private final mTaskBarWidthForRotation:[I

.field private final mWmService:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/IWindowManager;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayController;->mDisplays:Landroid/util/SparseArray;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayController;->mDisplayChangedListeners:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 79
    iput v0, p0, Lcom/android/wm/shell/common/DisplayController;->mTaskBarPosition:I

    .line 92
    iput-object p3, p0, Lcom/android/wm/shell/common/DisplayController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 93
    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayController;->mContext:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lcom/android/wm/shell/common/DisplayController;->mWmService:Landroid/view/IWindowManager;

    .line 95
    new-instance p1, Lcom/android/wm/shell/common/DisplayChangeController;

    invoke-direct {p1, p2, p3}, Lcom/android/wm/shell/common/DisplayChangeController;-><init>(Landroid/view/IWindowManager;Lcom/android/wm/shell/common/ShellExecutor;)V

    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayController;->mChangeController:Lcom/android/wm/shell/common/DisplayChangeController;

    .line 96
    new-instance p1, Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;-><init>(Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayController$1;)V

    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayController;->mDisplayContainerListener:Landroid/view/IDisplayWindowListener;

    .line 98
    :try_start_0
    invoke-interface {p2, p1}, Landroid/view/IWindowManager;->registerDisplayWindowListener(Landroid/view/IDisplayWindowListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    sget-boolean p1, Lcom/android/wm/shell/CoreShellRune;->MW_SUPPORT_EXTRA_STABLE_INSETS:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    new-array p1, p1, [I

    .line 105
    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayController;->mTaskBarWidthForRotation:[I

    .line 106
    invoke-direct {p0}, Lcom/android/wm/shell/common/DisplayController;->registerSettingsObserver()V

    goto :goto_0

    .line 108
    :cond_0
    iput-object p3, p0, Lcom/android/wm/shell/common/DisplayController;->mTaskBarWidthForRotation:[I

    .line 113
    :goto_0
    iput-object p3, p0, Lcom/android/wm/shell/common/DisplayController;->mAltMainDisplayRecord:Lcom/android/wm/shell/common/DisplayController$DisplayRecord;

    return-void

    .line 100
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unable to register hierarchy listener"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$200(Lcom/android/wm/shell/common/DisplayController;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/android/wm/shell/common/DisplayController;->updateSettings()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/wm/shell/common/DisplayController;)Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/wm/shell/common/DisplayController;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/DisplayController;->onStartRemoteConfigurationChanged(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/wm/shell/common/DisplayController;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/DisplayController;->onFixedRotationFinished(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/wm/shell/common/DisplayController;II)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/common/DisplayController;->onFixedRotationStarted(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/wm/shell/common/DisplayController;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/DisplayController;->onDisplayRemoved(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/wm/shell/common/DisplayController;ILandroid/content/res/Configuration;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/common/DisplayController;->onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/wm/shell/common/DisplayController;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/DisplayController;->onDisplayAdded(I)V

    return-void
.end method

.method private onDisplayAdded(I)V
    .locals 7

    .line 174
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayController;->mDisplays:Landroid/util/SparseArray;

    monitor-enter v0

    .line 175
    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 176
    monitor-exit v0

    return-void

    .line 178
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    if-nez v1, :cond_1

    .line 182
    monitor-exit v0

    return-void

    .line 184
    :cond_1
    new-instance v2, Lcom/android/wm/shell/common/DisplayController$DisplayRecord;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/wm/shell/common/DisplayController$DisplayRecord;-><init>(Lcom/android/wm/shell/common/DisplayController$1;)V

    .line 185
    iput p1, v2, Lcom/android/wm/shell/common/DisplayController$DisplayRecord;->mDisplayId:I

    if-nez p1, :cond_2

    .line 186
    iget-object v3, p0, Lcom/android/wm/shell/common/DisplayController;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 187
    :cond_2
    iget-object v3, p0, Lcom/android/wm/shell/common/DisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v3

    :goto_0
    iput-object v3, v2, Lcom/android/wm/shell/common/DisplayController$DisplayRecord;->mContext:Landroid/content/Context;

    .line 189
    sget-boolean v4, Lcom/android/wm/shell/CoreShellRune;->MW_SUPPORT_EXTRA_STABLE_INSETS:Z

    if-eqz v4, :cond_3

    if-nez p1, :cond_3

    .line 190
    new-instance v4, Lcom/android/wm/shell/common/DisplayLayout;

    iget-object v5, p0, Lcom/android/wm/shell/common/DisplayController;->mTaskBarWidthForRotation:[I

    iget v6, p0, Lcom/android/wm/shell/common/DisplayController;->mTaskBarPosition:I

    invoke-direct {v4, v3, v1, v5, v6}, Lcom/android/wm/shell/common/DisplayLayout;-><init>(Landroid/content/Context;Landroid/view/Display;[II)V

    iput-object v4, v2, Lcom/android/wm/shell/common/DisplayController$DisplayRecord;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    goto :goto_1

    .line 201
    :cond_3
    new-instance v4, Lcom/android/wm/shell/common/DisplayLayout;

    invoke-direct {v4, v3, v1}, Lcom/android/wm/shell/common/DisplayLayout;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    iput-object v4, v2, Lcom/android/wm/shell/common/DisplayController$DisplayRecord;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 203
    :goto_1
    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x0

    .line 204
    :goto_2
    iget-object v2, p0, Lcom/android/wm/shell/common/DisplayController;->mDisplayChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 205
    iget-object v2, p0, Lcom/android/wm/shell/common/DisplayController;->mDisplayChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;

    invoke-interface {v2, p1}, Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;->onDisplayAdded(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 207
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .locals 7

    .line 211
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayController;->mDisplays:Landroid/util/SparseArray;

    monitor-enter v0

    .line 212
    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/common/DisplayController$DisplayRecord;

    if-nez v1, :cond_0

    const-string p0, "DisplayController"

    const-string p1, "Skipping Display Configuration change on non-added display."

    .line 214
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    monitor-exit v0

    return-void

    .line 218
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p0, "DisplayController"

    const-string p1, "Skipping Display Configuration change on invalid display. It may have been removed."

    .line 220
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    monitor-exit v0

    return-void

    .line 224
    :cond_1
    iget-object v3, p0, Lcom/android/wm/shell/common/DisplayController;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_2

    .line 226
    invoke-virtual {v3, v2}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v3

    .line 242
    :cond_2
    invoke-virtual {v3, p2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v3

    iput-object v3, v1, Lcom/android/wm/shell/common/DisplayController$DisplayRecord;->mContext:Landroid/content/Context;

    .line 244
    sget-boolean v4, Lcom/android/wm/shell/CoreShellRune;->MW_SUPPORT_EXTRA_STABLE_INSETS:Z

    if-eqz v4, :cond_3

    if-nez p1, :cond_3

    .line 245
    new-instance v4, Lcom/android/wm/shell/common/DisplayLayout;

    iget-object v5, p0, Lcom/android/wm/shell/common/DisplayController;->mTaskBarWidthForRotation:[I

    iget v6, p0, Lcom/android/wm/shell/common/DisplayController;->mTaskBarPosition:I

    invoke-direct {v4, v3, v2, v5, v6}, Lcom/android/wm/shell/common/DisplayLayout;-><init>(Landroid/content/Context;Landroid/view/Display;[II)V

    iput-object v4, v1, Lcom/android/wm/shell/common/DisplayController$DisplayRecord;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    goto :goto_0

    .line 249
    :cond_3
    new-instance v4, Lcom/android/wm/shell/common/DisplayLayout;

    invoke-direct {v4, v3, v2}, Lcom/android/wm/shell/common/DisplayLayout;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    iput-object v4, v1, Lcom/android/wm/shell/common/DisplayController$DisplayRecord;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    :goto_0
    const/4 v1, 0x0

    .line 251
    :goto_1
    iget-object v2, p0, Lcom/android/wm/shell/common/DisplayController;->mDisplayChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 252
    iget-object v2, p0, Lcom/android/wm/shell/common/DisplayController;->mDisplayChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;

    invoke-interface {v2, p1, p2}, Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;->onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 255
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private onDisplayRemoved(I)V
    .locals 3

    .line 259
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayController;->mDisplays:Landroid/util/SparseArray;

    monitor-enter v0

    .line 260
    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 261
    monitor-exit v0

    return-void

    .line 263
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayController;->mDisplayChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 264
    iget-object v2, p0, Lcom/android/wm/shell/common/DisplayController;->mDisplayChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;

    invoke-interface {v2, p1}, Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;->onDisplayRemoved(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 266
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 267
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private onFixedRotationFinished(I)V
    .locals 3

    .line 285
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayController;->mDisplays:Landroid/util/SparseArray;

    monitor-enter v0

    .line 286
    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 291
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayController;->mDisplayChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 292
    iget-object v2, p0, Lcom/android/wm/shell/common/DisplayController;->mDisplayChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;

    invoke-interface {v2, p1}, Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;->onFixedRotationFinished(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 294
    :cond_1
    monitor-exit v0

    return-void

    :cond_2
    :goto_1
    const-string p0, "DisplayController"

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping onFixedRotationFinished on unknown display, displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 294
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private onFixedRotationStarted(II)V
    .locals 3

    .line 271
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayController;->mDisplays:Landroid/util/SparseArray;

    monitor-enter v0

    .line 272
    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 277
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayController;->mDisplayChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 278
    iget-object v2, p0, Lcom/android/wm/shell/common/DisplayController;->mDisplayChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;

    invoke-interface {v2, p1, p2}, Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;->onFixedRotationStarted(II)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 281
    :cond_1
    monitor-exit v0

    return-void

    :cond_2
    :goto_1
    const-string p0, "DisplayController"

    .line 273
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping onFixedRotationStarted on unknown display, displayId="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 281
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private onStartRemoteConfigurationChanged(I)V
    .locals 3

    .line 300
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayController;->mDisplays:Landroid/util/SparseArray;

    monitor-enter v0

    .line 301
    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 306
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayController;->mDisplayChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 307
    iget-object v2, p0, Lcom/android/wm/shell/common/DisplayController;->mDisplayChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;

    invoke-interface {v2, p1}, Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;->onStartRemoteConfigurationChanged(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 310
    :cond_1
    monitor-exit v0

    return-void

    :cond_2
    :goto_1
    const-string p0, "DisplayController"

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartRemoteConfigurationChanged: on unknown display, displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 310
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private registerSettingsObserver()V
    .locals 4

    .line 347
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayController;->mSettingsObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_1

    .line 348
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 350
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 352
    :cond_0
    new-instance v1, Lcom/android/wm/shell/common/DisplayController$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/common/DisplayController$1;-><init>(Lcom/android/wm/shell/common/DisplayController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/wm/shell/common/DisplayController;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "pinned_edge_width_directions"

    .line 361
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/common/DisplayController;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "active_edge_area"

    .line 363
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/common/DisplayController;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 365
    invoke-direct {p0}, Lcom/android/wm/shell/common/DisplayController;->updateSettings()V

    return-void
.end method

.method private updateSettings()V
    .locals 9

    .line 377
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "pinned_edge_width_directions"

    .line 378
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 379
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const-string v2, ","

    .line 382
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 383
    array-length v3, v2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    return-void

    :cond_1
    new-array v3, v4, [I

    const/4 v5, 0x0

    .line 388
    aget-object v6, v2, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v3, v5

    const/4 v6, 0x1

    .line 389
    aget-object v7, v2, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v3, v6

    const/4 v7, 0x2

    .line 390
    aget-object v8, v2, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v3, v7

    const/4 v7, 0x3

    .line 391
    aget-object v2, v2, v7

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v3, v7

    const-string v2, "active_edge_area"

    .line 394
    invoke-static {v0, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    move v2, v5

    :goto_0
    if-ge v2, v4, :cond_3

    .line 397
    aget v7, v3, v2

    iget-object v8, p0, Lcom/android/wm/shell/common/DisplayController;->mTaskBarWidthForRotation:[I

    aget v8, v8, v2

    if-eq v7, v8, :cond_2

    move v2, v6

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v5

    .line 402
    :goto_1
    iget v7, p0, Lcom/android/wm/shell/common/DisplayController;->mTaskBarPosition:I

    if-eq v0, v7, :cond_4

    goto :goto_2

    :cond_4
    move v6, v2

    :goto_2
    if-nez v6, :cond_5

    return-void

    :cond_5
    :goto_3
    if-ge v5, v4, :cond_6

    .line 411
    iget-object v2, p0, Lcom/android/wm/shell/common/DisplayController;->mTaskBarWidthForRotation:[I

    aget v6, v3, v5

    aput v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 413
    :cond_6
    iput v0, p0, Lcom/android/wm/shell/common/DisplayController;->mTaskBarPosition:I

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSettings: TaskBarWidthForRotation="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " TaskBarPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/wm/shell/common/DisplayController;->mTaskBarPosition:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DisplayController"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public addDisplayChangingController(Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;)V
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayController;->mChangeController:Lcom/android/wm/shell/common/DisplayChangeController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/DisplayChangeController;->addRotationListener(Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;)V

    return-void
.end method

.method public addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayController;->mDisplays:Landroid/util/SparseArray;

    monitor-enter v0

    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayController;->mDisplayChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    monitor-exit v0

    return-void

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayController;->mDisplayChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 144
    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/common/DisplayController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 145
    iget-object v2, p0, Lcom/android/wm/shell/common/DisplayController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-interface {p1, v2}, Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;->onDisplayAdded(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getDisplay(I)Landroid/view/Display;
    .locals 1

    .line 86
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 87
    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayContext(I)Landroid/content/Context;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/common/DisplayController$DisplayRecord;

    if-eqz p0, :cond_0

    .line 131
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayController$DisplayRecord;->mContext:Landroid/content/Context;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/common/DisplayController$DisplayRecord;

    if-eqz p0, :cond_0

    .line 123
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayController$DisplayRecord;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public removeDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayController;->mDisplays:Landroid/util/SparseArray;

    monitor-enter v0

    .line 155
    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayController;->mDisplayChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 156
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
