.class public Lcom/android/systemui/util/SettingsHelper;
.super Ljava/lang/Object;
.source "SettingsHelper.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/util/SettingsHelper$ItemMap;,
        Lcom/android/systemui/util/SettingsHelper$Item;,
        Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;
    }
.end annotation


# instance fields
.field private mCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSettingsObserver:Landroid/database/ContentObserver;


# direct methods
.method public static synthetic $r8$lambda$Q3P2w2lb54WUoHpybUSPkuwHX7g(Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/util/SettingsHelper;->lambda$onUserSwitched$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$RhKwJG9O7MCaPk-0YRgPF-P-2bo(Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/util/SettingsHelper;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    .line 403
    new-instance v0, Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;-><init>(Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/util/SettingsHelper$1;)V

    iput-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 405
    new-instance v0, Lcom/android/systemui/util/SettingsHelper$1;

    sget-object v1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/util/SettingsHelper$1;-><init>(Lcom/android/systemui/util/SettingsHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 437
    iput-object p1, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    .line 438
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 440
    invoke-direct {p0}, Lcom/android/systemui/util/SettingsHelper;->setUpSettingsItem()V

    .line 444
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/SettingsHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/util/SettingsHelper;)V

    const-string p0, "SettingsHelper"

    invoke-direct {p1, v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/16 p0, 0xa

    .line 449
    invoke-virtual {p1, p0}, Ljava/lang/Thread;->setPriority(I)V

    .line 450
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/util/SettingsHelper;)Landroid/content/ContentResolver;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/util/SettingsHelper;)Lcom/android/systemui/util/SettingsHelper$ItemMap;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/util/SettingsHelper;Landroid/net/Uri;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/android/systemui/util/SettingsHelper;->broadcastChange(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/util/SettingsHelper;)Landroid/database/ContentObserver;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method private broadcastChange(Landroid/net/Uri;)V
    .locals 3

    const-string v0, "SettingsHelper"

    .line 917
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** broadcastChange for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    monitor-enter p0

    .line 921
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 922
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    .line 925
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p0, v1, :cond_1

    .line 926
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    if-eqz v1, :cond_0

    .line 928
    invoke-interface {v1, p1}, Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;->onChanged(Landroid/net/Uri;)V

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 922
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private getDefaultScreenTransitionEffect()I
    .locals 1

    .line 799
    invoke-static {}, Landroid/hardware/fingerprint/FingerprintManager;->semGetTransitionEffectValue()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 801
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string v0, "CscFeature_LockScreen_DisableUnlockVI"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    .line 445
    invoke-direct {p0}, Lcom/android/systemui/util/SettingsHelper;->readSettingsDB()V

    .line 446
    invoke-direct {p0}, Lcom/android/systemui/util/SettingsHelper;->registerSettingsObserver()V

    return-void
.end method

.method private synthetic lambda$onUserSwitched$1()V
    .locals 0

    .line 832
    invoke-direct {p0}, Lcom/android/systemui/util/SettingsHelper;->registerSettingsObserver()V

    return-void
.end method

.method private readSettingsDB()V
    .locals 4

    .line 805
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 806
    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, p0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->updateMapAll(Landroid/content/ContentResolver;)V

    .line 807
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readSettingsDB() COMPLETED elapsed= "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SettingsHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private registerSettingsObserver()V
    .locals 4

    .line 816
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 817
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->registerAllObserver()V

    .line 818
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerSettingsObserver() COMPLETED elapsed= "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SettingsHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setUpSettingsItem()V
    .locals 16

    move-object/from16 v8, p0

    .line 454
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v2, "System"

    const-string/jumbo v3, "white_lockscreen_statusbar"

    const-string v4, "Int"

    const/4 v6, 0x1

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 455
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "accessibility_reduce_transparency"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 456
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string/jumbo v3, "white_lockscreen_wallpaper"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 457
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v2, "System"

    const-string v3, "lockscreen_wallpaper"

    const-string v4, "Int"

    move-object v0, v9

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 458
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "lockscreen_wallpaper_sub"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 459
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "lockscreen_wallpaper_transparent"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 460
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string/jumbo v3, "sub_display_lockscreen_wallpaper_transparency"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 461
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "android.wallpaper.settings_systemui_transparency"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 462
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string/jumbo v3, "sub_display_system_wallpaper_transparency"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 463
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "dualclock_menu_settings"

    const-string v4, "Int"

    move-object v0, v9

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 464
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string/jumbo v3, "sidesync_source_connect"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 465
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "automatic_unlock"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 466
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string/jumbo v3, "theme_font_clock"

    const-string v4, "String"

    const/4 v5, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 467
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string/jumbo v3, "theme_font_numeric"

    const-string v4, "String"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 468
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string/jumbo v3, "theme_font_system"

    const-string v4, "String"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 469
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "homecity_timezone"

    const-string v4, "String"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 470
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "current_sec_theme_package_open_theme"

    const-string v4, "String"

    const/4 v6, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 471
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "current_sec_appicon_theme_package"

    const-string v4, "String"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 472
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "current_sec_active_themepackage"

    const-string v4, "String"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 473
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string/jumbo v3, "white_cover_wallpaper"

    const-string v4, "Int"

    move-object v0, v9

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 474
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "lock_application_shortcut"

    const-string v4, "String"

    const/4 v6, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 475
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string/jumbo v3, "tap_to_icon"

    const-string v4, "Int"

    const/4 v6, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 476
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "lock_fmm_Message"

    const-string v4, "String"

    const/4 v5, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 477
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "lock_fmm_phone"

    const-string v4, "String"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 478
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string/jumbo v3, "show_button_background"

    const-string v4, "Int"

    const/4 v6, 0x1

    move-object v0, v9

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 479
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "additional_information_val"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 480
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "add_info_music_control"

    const-string v4, "Int"

    move-object v0, v9

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 481
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "add_info_today_schedule"

    const-string v4, "Int"

    move-object v0, v9

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 482
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "add_info_alarm"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 483
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string/jumbo v3, "servicebox_page_gravity"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 484
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "aod_servicebox_page_gravity"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 485
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "aod_mode"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 486
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string v3, "lock_function_val"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 487
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string/jumbo v3, "white_lockscreen_navigationbar"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 488
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "face_widget_order"

    const-string v4, "String"

    const/4 v5, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 489
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string v3, "lockscreen_aod_staying_music_page"

    const-string v4, "Int"

    const/4 v6, 0x0

    move-object v0, v9

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 490
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string/jumbo v3, "reserve_battery_on"

    const-string v4, "Int"

    const/4 v6, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 491
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string/jumbo v3, "n_digits_pin_enabled"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 492
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string/jumbo v3, "voicecall_type"

    const-string v4, "Int"

    move-object v0, v9

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 493
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string/jumbo v3, "show_keyboard_button"

    const-string v4, "Int"

    move-object v0, v9

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 494
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string/jumbo v3, "voicecall_type2"

    const-string v4, "Int"

    move-object v0, v9

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 495
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "lock_adaptive_color"

    const-string v4, "Int"

    move-object v0, v9

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 496
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "lock_clock_adaptive_colors"

    const-string v4, "String"

    const/4 v5, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 497
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string/jumbo v3, "roaming_clock_option"

    const-string v4, "Int"

    const/4 v6, 0x0

    move-object v0, v9

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 498
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "face_widgets_option"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 499
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string v3, "lock_screen_show_notifications"

    const-string v4, "Int"

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 500
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "lockscreen_notifications_option"

    const-string v4, "Int"

    const/4 v6, 0x0

    move-object v0, v9

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 501
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "lockscreen_minimizing_notification"

    const-string v4, "Int"

    const/4 v6, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 502
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string/jumbo v3, "notification_text_color_inversion"

    const-string v4, "Int"

    move-object v0, v9

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 503
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string/jumbo v3, "mobile_data_question"

    const-string v4, "Int"

    const/4 v6, 0x0

    move-object v0, v9

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 504
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string/jumbo v3, "notification_freeform_menuitem"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 505
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string v3, "isBikeMode"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 506
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string/jumbo v3, "missing_phone_lock"

    const-string v4, "String"

    const/4 v5, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 507
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string v3, "display_cutout_hide_notch"

    const-string v4, "Int"

    const/4 v6, 0x1

    move-object v0, v9

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 508
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string v3, "enable_reserve_max_mode"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 509
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "covert_on"

    const-string v4, "Int"

    const/4 v6, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 510
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v2, "System"

    const-string v3, "enable_fullscreen_user_switcher"

    const-string v4, "Int"

    move-object v0, v9

    move-object v5, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 511
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "display_battery_percentage"

    const-string v4, "Int"

    const/4 v6, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 514
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "blue_light_filter"

    const-string v4, "Int"

    move-object v0, v9

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 515
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v2, "System"

    const-string v3, "blue_light_filter_opacity"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 516
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "blue_light_filter_adaptive_mode"

    const-string v4, "Int"

    move-object v0, v9

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 517
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "blue_light_filter_scheduled"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 518
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "blue_light_filter_type"

    const-string v4, "Int"

    move-object v0, v9

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 519
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "greyscale_mode"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 520
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "high_contrast"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 521
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "color_blind"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 522
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string v3, "color_lens_switch"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 526
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string/jumbo v3, "swipe_directly_to_quick_setting"

    const-string v4, "Int"

    const/4 v6, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 529
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string/jumbo v3, "swipe_directly_to_quick_setting_area"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 532
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string/jumbo v3, "swipe_directly_to_quick_setting_position"

    const-string v4, "String"

    const/4 v5, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 534
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_STYLE_ALTERNATE_CALENDAR:Z

    if-eqz v0, :cond_0

    .line 535
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x0

    const-string v2, "System"

    const-string v3, "aodlock_support_lunar"

    const-string v4, "Int"

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 536
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "aodlock_support_hijri"

    const-string v4, "Int"

    move-object v0, v9

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 539
    :cond_0
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x0

    const-string v2, "Global"

    const-string/jumbo v3, "mode_ringer_time_on"

    const-string v4, "Int"

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 542
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x1

    const-string v2, "System"

    const-string v3, "emergency_mode"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 543
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string/jumbo v3, "ultra_powersaving_mode"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 544
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string/jumbo v3, "minimal_battery_use"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 547
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const/16 v0, 0x3ec

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v2, "System"

    const-string v3, "Flashlight_brightness_level"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 548
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "flashlight_sos_enabled"

    const-string v4, "Int"

    move-object v0, v9

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 551
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x0

    const-string v2, "Global"

    const-string/jumbo v3, "sehome_portrait_mode_only"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 552
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string v3, "call_auto_rotation"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 553
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x1

    const-string v2, "System"

    const-string v3, "accelerometer_rotation"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 556
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string/jumbo v3, "powersaving_switch"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 557
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string/jumbo v3, "psm_switch"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 558
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x0

    const-string v2, "Global"

    const-string v3, "low_power"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 562
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x1

    const-string v2, "System"

    const-string v3, "easy_mode_switch"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 563
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v5, 0x0

    const-string v2, "System"

    const-string v3, "lock_shortcut_type"

    const-string v4, "String"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 564
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "lockscreen_show_shortcut"

    const-string v4, "Int"

    move-object v0, v9

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 565
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x0

    const-string v2, "System"

    const-string/jumbo v3, "set_shortcuts_mode"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 568
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x1

    const-string v2, "System"

    const-string v3, "any_screen_running"

    const-string v4, "Int"

    move-object v0, v9

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 570
    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_REAL_TIME_NETWORK_SPEED:Z

    if-eqz v0, :cond_1

    .line 571
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x1

    const-string v2, "System"

    const-string/jumbo v3, "network_speed"

    const-string v4, "Int"

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 573
    :cond_1
    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_PINNED_EDGE:Z

    if-eqz v0, :cond_2

    .line 574
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x0

    const-string v2, "System"

    const-string v3, "active_edge_area"

    const-string v4, "Int"

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 576
    :cond_2
    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SHOW_DATE:Z

    if-eqz v0, :cond_3

    .line 577
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x1

    const-string v2, "System"

    const-string/jumbo v3, "status_bar_show_date"

    const-string v4, "Int"

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 580
    :cond_3
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x1

    const-string v2, "System"

    const-string/jumbo v3, "mptcp_value_internal"

    const-string v4, "Int"

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 583
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string/jumbo v3, "status_bar_show_network_information"

    const-string v4, "Int"

    move-object v0, v9

    move-object v5, v13

    .line 584
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    .line 583
    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 586
    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_MUM_LOCKSCREEN_BUTTON:Z

    if-eqz v0, :cond_4

    .line 587
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x0

    const-string v2, "Global"

    const-string/jumbo v3, "user_switcher_enabled"

    const-string v4, "Int"

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 589
    :cond_4
    const-class v0, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->supportTwoPhone()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 590
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x0

    const-string v2, "Global"

    const-string/jumbo v3, "two_register"

    const-string v4, "Int"

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 591
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string/jumbo v3, "two_account"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 592
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string/jumbo v3, "two_call_enabled"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 593
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string/jumbo v3, "two_sms_enabled"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 597
    :cond_5
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x1

    const-string v2, "System"

    const-string v3, "all_sound_off"

    const-string v4, "Int"

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 600
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "haptic_feedback_enabled"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 603
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-static {}, Lcom/android/systemui/QpRune;->getSimpleStatsuBarDefaultValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v2, "System"

    const-string/jumbo v3, "simple_status_bar"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 607
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string v3, "lock_screen_allow_private_notifications"

    const-string v4, "Int"

    move-object v0, v9

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 610
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "access_control_enabled"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 623
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v2, "System"

    const-string v3, "lock_noticard_opacity"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 629
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "lockscreen_sounds_enabled"

    const-string v4, "Int"

    move-object v0, v9

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 631
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    .line 632
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_ALLOW_DEFAULT_ROTAITON:Z

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v12

    goto :goto_0

    :cond_6
    move v0, v10

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    const-string v2, "System"

    const-string v3, "lock_screen_allow_rotation"

    const-string v4, "Int"

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    .line 631
    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 634
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    .line 635
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/util/SettingsHelper;->getDefaultScreenTransitionEffect()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v2, "System"

    const-string/jumbo v3, "screen_transition_effect"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    .line 634
    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 637
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "lift_to_wake"

    const-string v4, "Int"

    move-object v0, v9

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 639
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "action_memo_on_off_screen"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 640
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string/jumbo v3, "screen_off_memo"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 642
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "data_usage_reminder"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 644
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string/jumbo v3, "refresh_rate_mode"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 646
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "double_tap_to_sleep"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 648
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "display_night_theme"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 650
    iget-object v0, v8, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceType;->isSupportPenDetachmentOption(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 651
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v2, "System"

    const-string/jumbo v3, "pen_detachment_option"

    const-string v4, "Int"

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 658
    :cond_7
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x1

    const-string v2, "System"

    const-string v3, "aod_tap_to_show_mode"

    const-string v4, "Int"

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 659
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "aod_mode_start_time"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 660
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "aod_mode_end_time"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 661
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "aod_show_state"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 662
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "aod_show_for_new_noti"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 664
    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    if-eqz v0, :cond_8

    .line 665
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x0

    const-string v2, "Secure"

    const-string/jumbo v3, "show_navigation_for_subscreen"

    const-string v4, "Int"

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 672
    :cond_8
    iget-object v9, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v15, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const-string v2, "System"

    const-string v3, "display_night_theme_wallpaper"

    const-string v4, "Int"

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v5, v13

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZ)V

    invoke-virtual {v9, v15}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 673
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string/jumbo v3, "wallpapertheme_state"

    const-string v4, "Int"

    move-object v0, v9

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 679
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x0

    const-string v2, "System"

    const-string v3, "lockstar_enabled"

    const-string v4, "Int"

    move-object v0, v9

    move-object v5, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 680
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string/jumbo v3, "plugin_lock_sub_enabled"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 681
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x1

    const-string v2, "Secure"

    const-string/jumbo v3, "plugin_lock_wallpaper_type"

    const-string v4, "Int"

    move-object v0, v9

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 682
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string/jumbo v3, "plugin_lock_wallpaper_type_sub"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 686
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string v3, "lock_screen_show_silent_notifications"

    const-string v4, "Int"

    move-object v0, v9

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 692
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v5, 0x0

    const-string v2, "Secure"

    const-string v3, "enabled_accessibility_services"

    const-string v4, "String"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 694
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_WOF:Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    const-string v2, "Secure"

    const-string v3, "fingerprint_always_on"

    const-string v4, "Int"

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 695
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string v3, "fingerprint_sensor_block_popup_show_again"

    const-string v4, "Int"

    move-object v0, v9

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 698
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string v3, "face_stay_on_lock_screen"

    const-string v4, "Int"

    move-object v0, v9

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 700
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x0

    const-string v2, "Global"

    const-string v3, "airplane_mode_on"

    const-string v4, "Int"

    move-object v0, v9

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 702
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string v3, "bouncer_one_hand_position"

    const-string v4, "Int"

    move-object v0, v9

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 704
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x1

    const-string v2, "System"

    const-string v3, "knox_finger_print_plus"

    const-string v4, "Int"

    move-object v0, v9

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 706
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string v3, "auto_swipe_main_user"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 710
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x0

    const-string v2, "Global"

    const-string v3, "edge_enable"

    const-string v4, "Int"

    move-object v0, v9

    move-object v5, v13

    .line 711
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    .line 710
    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 713
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v2, "System"

    const-string v3, "cocktail_bar_enabled_cocktails"

    const-string v4, "String"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 716
    sget-boolean v0, Lcom/android/wm/shell/CoreShellRune;->BAIDU_CARLIFE:Z

    if-eqz v0, :cond_9

    .line 717
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x1

    const-string v2, "Global"

    const-string v3, "lelink_cast_on"

    const-string v4, "Int"

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v5, v11

    .line 718
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    .line 717
    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 723
    :cond_9
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_a

    .line 724
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x0

    const-string v2, "Global"

    const-string/jumbo v3, "navigationbar_key_order"

    const-string v4, "Int"

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 725
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string/jumbo v3, "navigation_bar_rotate_suggestion_enabled"

    const-string v4, "Int"

    move-object v0, v9

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 726
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string/jumbo v3, "navigationbar_use_theme_default"

    const-string v4, "Int"

    move-object v0, v9

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 727
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const v0, -0xd0d0e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v2, "Global"

    const-string/jumbo v3, "navigationbar_current_color"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 728
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string/jumbo v3, "navigationbar_color"

    const-string v4, "Int"

    move-object v0, v9

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 731
    :cond_a
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_REMOTEVIEW:Z

    if-eqz v0, :cond_b

    .line 732
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x0

    const-string v2, "Secure"

    const-string v3, "game_double_swipe_enable"

    const-string v4, "Int"

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 733
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string v3, "game_show_floating_icon"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 736
    :cond_b
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    if-eqz v0, :cond_c

    .line 737
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x0

    const-string v2, "Global"

    const-string/jumbo v3, "navigation_bar_gesture_while_hidden"

    const-string v4, "Int"

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 738
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string/jumbo v3, "navigation_bar_gesture_hint"

    const-string v4, "Int"

    move-object v0, v9

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 739
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string/jumbo v3, "navigation_bar_button_to_hide_keyboard"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 740
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string/jumbo v3, "navigation_bar_block_gestures_with_spen"

    const-string v4, "Int"

    move-object v0, v9

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 741
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string/jumbo v3, "navigation_bar_gesture_disabled_by_policy"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 742
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x1

    const-string v2, "System"

    const-string/jumbo v3, "navigation_gestures_vibrate"

    const-string v4, "Int"

    move-object v0, v9

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 743
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v5, 0x0

    const-string v2, "System"

    const-string/jumbo v3, "reduce_screen_running_info"

    const-string v4, "String"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 746
    :cond_c
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_MOVABLE_POSITION:Z

    if-eqz v0, :cond_d

    .line 747
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    const-string v2, "Global"

    const-string/jumbo v3, "navigationbar_key_position"

    const-string v4, "Int"

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 750
    :cond_d
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_PINNED_EDGE:Z

    if-eqz v0, :cond_e

    .line 751
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x0

    const-string v2, "System"

    const-string/jumbo v3, "panel_mode"

    const-string v4, "Int"

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 755
    :cond_e
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x1

    const-string v2, "Secure"

    const-string/jumbo v3, "show_notification_snooze"

    const-string v4, "Int"

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 759
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string v3, "assist_disclosure_enabled"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 763
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v5, 0x0

    const-string v2, "Secure"

    const-string v3, "icon_blacklist"

    const-string v4, "String"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 767
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x0

    const-string v2, "Global"

    const-string/jumbo v3, "notification_sort_order"

    const-string v4, "Int"

    move-object v0, v9

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 771
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string/jumbo v3, "quickstar_qs_tile_layout_custom_matrix"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 775
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    .line 776
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SYSTEMUI_SUPPORT_BRIEF_NOTIFICATION"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 778
    invoke-static {}, Lcom/android/systemui/edgelighting/Feature;->isEdgeLightingDefaultOff()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_1

    :cond_f
    move v10, v12

    .line 776
    :cond_10
    :goto_1
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    const-string v2, "System"

    const-string v3, "edge_lighting"

    const-string v4, "Int"

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    .line 775
    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 782
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x0

    const-string v2, "Global"

    const-string/jumbo v3, "qs_media_controls"

    const-string v4, "Int"

    move-object v0, v9

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 783
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string/jumbo v3, "qs_media_resumption"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 784
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string/jumbo v3, "qs_media_recommend"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 788
    iget-object v0, v8, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "notification_setting_demo"

    invoke-static {v0, v1, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 789
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string/jumbo v3, "notification_setting_demo"

    const-string v4, "Int"

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 793
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x1

    const-string v2, "Secure"

    const-string v3, "location_mode"

    const-string v4, "Int"

    move-object v0, v9

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    return-void
.end method


# virtual methods
.method public allowMediaRecommendations()Z
    .locals 1

    .line 1873
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "qs_media_recommend"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1386
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class p3, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " state:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1387
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {p0, p2}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->dumpAll(Ljava/io/PrintWriter;)V

    .line 1388
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public forceBroadcastWhiteKeyguardWallpaper()V
    .locals 1

    const-string/jumbo v0, "white_lockscreen_wallpaper"

    .line 1233
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/util/SettingsHelper;->broadcastChange(Landroid/net/Uri;)V

    return-void
.end method

.method public getAODEndTime()I
    .locals 1

    .line 1108
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "aod_mode_end_time"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getAODStartTime()I
    .locals 1

    .line 1103
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "aod_mode_start_time"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getActiveIconPackage()Ljava/lang/String;
    .locals 1

    .line 1131
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "current_sec_appicon_theme_package"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getActiveThemePackage()Ljava/lang/String;
    .locals 1

    .line 1127
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "current_sec_active_themepackage"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAdaptiveColorMode()I
    .locals 1

    .line 1033
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lock_adaptive_color"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getBlueLightFilterMode(Ljava/lang/String;)I
    .locals 2

    .line 2076
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "blue_light_filter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "blue_light_filter_opacity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2080
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0

    .line 2078
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getBouncerOneHandPosition()I
    .locals 1

    .line 2267
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "bouncer_one_hand_position"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getDirectQuickSettingArea()I
    .locals 1

    .line 2031
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "swipe_directly_to_quick_setting_area"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getDirectQuickSettingPosition()Ljava/lang/String;
    .locals 1

    .line 2042
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "swipe_directly_to_quick_setting_position"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEnableFullscreenUserSwitcher()I
    .locals 1

    .line 1159
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "enable_fullscreen_user_switcher"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getFMMMessage()Ljava/lang/String;
    .locals 1

    .line 1151
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lock_fmm_Message"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFMMPhone()Ljava/lang/String;
    .locals 1

    .line 1155
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lock_fmm_phone"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFlashLightLevel()I
    .locals 1

    .line 1880
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "Flashlight_brightness_level"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getHomescreenWallpaperSource(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 1020
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo p1, "sub_display_system_wallpaper_transparency"

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0

    .line 1022
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string p1, "android.wallpaper.settings_systemui_transparency"

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getIconBlacklist()Ljava/lang/String;
    .locals 1

    .line 1377
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "icon_blacklist"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLocationMode()I
    .locals 1

    .line 2357
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "location_mode"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getLockNoticardOpacity()I
    .locals 1

    .line 2320
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lock_noticard_opacity"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getLockScreenNotificationValue()I
    .locals 1

    .line 1699
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lockscreen_notifications_option"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getLockScreenPriavateNotificationsValue()I
    .locals 1

    .line 1704
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lock_screen_allow_private_notifications"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getLockscreenWallpaperTransparent()I
    .locals 1

    .line 1007
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper;->getLockscreenWallpaperTransparent(Z)I

    move-result p0

    return p0
.end method

.method public getLockscreenWallpaperTransparent(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 1012
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo p1, "sub_display_lockscreen_wallpaper_transparency"

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0

    .line 1014
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string p1, "lockscreen_wallpaper_transparent"

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getLockscreenWallpaperType(I)I
    .locals 1

    and-int/lit8 p1, p1, 0x3c

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 983
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string p1, "lockscreen_wallpaper_sub"

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0

    .line 985
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string p1, "lockscreen_wallpaper"

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getNDigitsPIN()I
    .locals 1

    .line 1296
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "n_digits_pin_enabled"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getNavigationBarAlignPosition()I
    .locals 2

    .line 2164
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2165
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_MOVABLE_POSITION:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "navigationbar_key_position"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v1

    :cond_0
    return v1
.end method

.method public getNotificationSortOrderValue()I
    .locals 1

    .line 1366
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "notification_sort_order"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getNotificationTextColorInversion()I
    .locals 1

    .line 2324
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "notification_text_color_inversion"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getOneHandModeRunningInfo()Ljava/lang/String;
    .locals 1

    .line 2232
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "reduce_screen_running_info"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getOpenThemeNumericFont()Ljava/lang/String;
    .locals 1

    .line 1143
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "theme_font_numeric"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPluginLockValue(I)I
    .locals 1

    .line 1896
    sget-boolean v0, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string/jumbo p1, "plugin_lock_sub_enabled"

    goto :goto_0

    :cond_0
    const-string p1, "lockstar_enabled"

    .line 1897
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getPluginLockWallpaperType(I)I
    .locals 1

    and-int/lit8 p1, p1, 0x3c

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 1910
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo p1, "plugin_lock_wallpaper_type_sub"

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0

    .line 1912
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo p1, "plugin_lock_wallpaper_type"

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getRefreshRateMode()I
    .locals 1

    .line 2242
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "refresh_rate_mode"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getScheduledBluelightType()I
    .locals 1

    .line 2106
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "blue_light_filter_type"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getShortcutAppList()Ljava/lang/String;
    .locals 1

    .line 1202
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lock_application_shortcut"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getShowNotificationOnKeyguardValue()I
    .locals 1

    .line 1694
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lock_screen_show_notifications"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getSimpleStatusBarValue()I
    .locals 1

    .line 1244
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "simple_status_bar"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getVoiceCallType(I)I
    .locals 0

    if-nez p1, :cond_0

    .line 1998
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo p1, "voicecall_type"

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0

    .line 2000
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo p1, "voicecall_type2"

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public hasTwoPhoneAccount()Z
    .locals 1

    .line 2344
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "two_account"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAODEnabled()Z
    .locals 1

    .line 1088
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "aod_mode"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAODShowForNewNotiModeEnabled()Z
    .locals 1

    .line 1098
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "aod_show_for_new_noti"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAODShown()Z
    .locals 1

    .line 1113
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "aod_show_state"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAODTapToShowModeEnabled()Z
    .locals 1

    .line 1093
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "aod_tap_to_show_mode"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAccessControlEnabled()Z
    .locals 1

    .line 1738
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "access_control_enabled"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAdaptiveBluelight()Z
    .locals 1

    .line 2100
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "blue_light_filter_adaptive_mode"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAdaptiveColorMode()Z
    .locals 1

    .line 1028
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lock_adaptive_color"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAirplaneModeOn()Z
    .locals 1

    .line 973
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "airplane_mode_on"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAllSoundOff()Z
    .locals 1

    .line 1302
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "all_sound_off"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isApplyDarkFilterToWallpaper()Z
    .locals 1

    .line 1118
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "display_night_theme_wallpaper"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAssistDisclosureEnabled()Z
    .locals 1

    .line 1837
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "assist_disclosure_enabled"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAutoWipeEnable()Z
    .locals 1

    .line 2282
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "auto_swipe_main_user"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAutomaticUnlockEnabled()Z
    .locals 1

    .line 1198
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "automatic_unlock"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBlockGesturesWithSpenEnabled()Z
    .locals 2

    .line 2212
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "navigation_bar_block_gestures_with_spen"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isCallScreenRotationAllowed()Z
    .locals 1

    .line 1727
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "call_auto_rotation"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isColorAdjustment()Z
    .locals 1

    .line 2069
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "color_blind"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isColorLens()Z
    .locals 1

    .line 2072
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "color_lens_switch"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isColorThemeEnabled()Z
    .locals 1

    .line 1123
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "wallpapertheme_state"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDarkTheme()Z
    .locals 1

    .line 2297
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "display_night_theme"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDataUsageReminderEnabled()Z
    .locals 1

    .line 2237
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "data_usage_reminder"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDoubleTapToSleepAllowed()Z
    .locals 1

    .line 2292
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "double_tap_to_sleep"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEasyModeOn()Z
    .locals 1

    .line 1641
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "easy_mode_switch"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEdgeAreaRight()Z
    .locals 2

    .line 1959
    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_PINNED_EDGE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1960
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "active_edge_area"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public isEdgeBackDisabledByPolicy()Z
    .locals 2

    .line 2222
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "navigation_bar_gesture_disabled_by_policy"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isEdgePinMode()Z
    .locals 2

    .line 1951
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_PINNED_EDGE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1952
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "panel_mode"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public isEmergencyMode()Z
    .locals 1

    .line 1326
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "emergency_mode"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnableReserveMaxMode()Z
    .locals 5

    .line 1669
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_MANAGE_POWER_PLANNING_DOWNLOADABLE:Z

    const-string v1, "emergency_mode"

    const/4 v2, 0x0

    const-string v3, "enable_reserve_max_mode"

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 1670
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {v0, v3}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 1671
    invoke-virtual {p0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-ne p0, v4, :cond_0

    move v2, v4

    :cond_0
    return v2

    .line 1673
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {v0, v3}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v4, :cond_2

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 1674
    invoke-virtual {p0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-ne p0, v4, :cond_2

    move v2, v4

    :cond_2
    return v2
.end method

.method public isEnableSnooze()Z
    .locals 1

    .line 2287
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "show_notification_snooze"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabledBiometricUnlockVI()Z
    .locals 1

    .line 2006
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "screen_transition_effect"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnabledFaceStayOnLock()Z
    .locals 1

    .line 2262
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "face_stay_on_lock_screen"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabledWof()Z
    .locals 1

    .line 2257
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "fingerprint_always_on"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isExpandQsAtOnceEnabled()Z
    .locals 1

    .line 2021
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "swipe_directly_to_quick_setting"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFingerprintSensorPopupShowAgain()Z
    .locals 1

    .line 2247
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "fingerprint_sensor_block_popup_show_again"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFlashLightSOSEnabled()Z
    .locals 1

    .line 1877
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "flashlight_sos_enabled"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGameToolsEnabled()Z
    .locals 1

    .line 2172
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_REMOTEVIEW:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "game_show_floating_icon"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isGestureVibrationEnabled()Z
    .locals 2

    .line 2227
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "navigation_gestures_vibrate"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isGrayScale()Z
    .locals 1

    .line 2063
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "greyscale_mode"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHapticFeedbackEnabled()Z
    .locals 1

    .line 2124
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "haptic_feedback_enabled"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHijriCalendarEnabled()Z
    .locals 2

    .line 1345
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_STYLE_ALTERNATE_CALENDAR_HIJRI:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "aodlock_support_hijri"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isHomeScreenRotationAllowed()Z
    .locals 1

    .line 1720
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "sehome_portrait_mode_only"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLeboRunning(Landroid/content/Context;)Z
    .locals 1

    .line 2367
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "lelink_cast_on"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v0, p1

    :cond_0
    return v0
.end method

.method public isLiftToWakeEnabled()Z
    .locals 1

    .line 2053
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lift_to_wake"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLiveWallpaperEnabled()Z
    .locals 4

    .line 990
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCurrentWhich()I

    move-result v0

    and-int/lit8 v0, v0, 0x3c

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x10

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 992
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lockscreen_wallpaper_sub"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1

    .line 994
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lockscreen_wallpaper"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    return v1
.end method

.method public isLiveWallpaperEnabled(Z)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 1000
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string p1, "lockscreen_wallpaper_sub"

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 1002
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string p1, "lockscreen_wallpaper"

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method

.method public isLock2StepVerificationEnabled()Z
    .locals 1

    .line 2277
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "knox_finger_print_plus"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLockFunctionsEnabled()Z
    .locals 1

    .line 1292
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lock_function_val"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLockScreenRotationAllowed()Z
    .locals 1

    .line 1918
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lock_screen_allow_rotation"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLockSoundEnabled()Z
    .locals 1

    .line 2016
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lockscreen_sounds_enabled"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLunarCalendarEnabled()Z
    .locals 2

    .line 1340
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_STYLE_ALTERNATE_CALENDAR_LUNAR_IN_VIETNAM:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "aodlock_support_lunar"

    .line 1341
    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isMPTCPEnabled()Z
    .locals 1

    .line 1981
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "mptcp_value_internal"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMobileDataConnectionPopupShowing()Z
    .locals 1

    .line 2314
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "mobile_data_question"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNavBarButtonOrderDefault()Z
    .locals 2

    .line 2129
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "navigationbar_key_order"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isNavigationBarGestureHintEnabled()Z
    .locals 2

    .line 2202
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "navigation_bar_gesture_hint"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isNavigationBarGestureProtectionEnabled()Z
    .locals 1

    .line 2182
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_REMOTEVIEW:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "game_double_swipe_enable"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNavigationBarGestureWhileHidden()Z
    .locals 3

    .line 2197
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "navigation_bar_gesture_while_hidden"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public isNavigationBarHideKeyboardButtonEnabled()Z
    .locals 2

    .line 2207
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "navigation_bar_button_to_hide_keyboard"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isNavigationBarRotateSuggestionEnabled()Z
    .locals 2

    .line 2154
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "navigation_bar_rotate_suggestion_enabled"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isNavigationBarUseThemeDefault()Z
    .locals 2

    .line 2144
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "navigationbar_use_theme_default"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isNegativeColor()Z
    .locals 1

    .line 2066
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "high_contrast"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNetworkInformationHiddenBySetting(Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;)Z
    .locals 1

    .line 1991
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->supportCarrierInfoSetting()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo p1, "status_bar_show_network_information"

    .line 1992
    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNewNotiGutsEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isNotificationIconsOnlyOn()Z
    .locals 1

    .line 2187
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lockscreen_minimizing_notification"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOneHandModeRunning()Z
    .locals 1

    .line 2119
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "any_screen_running"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOpenThemeLockWallpaper()Z
    .locals 1

    .line 1071
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->getLockscreenWallpaperTransparent()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOpenThemeLook()Z
    .locals 1

    .line 1080
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1083
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->getActiveThemePackage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isPenHasDetachmentOption()Z
    .locals 1

    .line 2011
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceType;->isSupportPenDetachmentOption(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "pen_detachment_option"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPopStyleBrief()Z
    .locals 1

    .line 2330
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "edge_lighting"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPowerSavingMode()Z
    .locals 3

    .line 1646
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v1, "powersaving_switch"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v2, "psm_switch"

    .line 1647
    invoke-virtual {v0, v2}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-eq v0, v1, :cond_2

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "low_power"

    .line 1648
    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public isQSButtonGridPopupEnabled()Z
    .locals 1

    .line 1356
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "quickstar_qs_tile_layout_custom_matrix"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReduceTransparencyEnabled()Z
    .locals 1

    .line 946
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "accessibility_reduce_transparency"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRotationLocked()Z
    .locals 1

    .line 1734
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "accelerometer_rotation"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isScreenOffMemoEnabled()Z
    .locals 2

    .line 1653
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "action_memo_on_off_screen"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "screen_off_memo"

    .line 1654
    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isShortcutMasterEnabled()Z
    .locals 1

    .line 2058
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lockscreen_show_shortcut"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShortcutsVisibleForMDM()Z
    .locals 1

    .line 1636
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "set_shortcuts_mode"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShowBatteryPercentInStatusBar()Z
    .locals 2

    .line 1931
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "display_battery_percentage"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    move v0, p0

    :goto_0
    return v0
.end method

.method public isShowDate()Z
    .locals 3

    .line 1967
    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SHOW_DATE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1968
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "status_bar_show_date"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, -0x1

    const/4 v2, 0x1

    if-ne p0, v0, :cond_0

    return v2

    :cond_0
    if-ne p0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public isShowFaceWidgetOnAod()Z
    .locals 1

    .line 1190
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "face_widgets_option"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShowKeyboardButton()Z
    .locals 1

    .line 1322
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "show_keyboard_button"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShowNavigationForSubscreen()Z
    .locals 2

    .line 2302
    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "show_navigation_for_subscreen"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isShowNetworkSpeedInStatusBar()Z
    .locals 1

    .line 1945
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "network_speed"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShowNotificationOnKeyguard()Z
    .locals 2

    .line 1680
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "lock_screen_show_notifications"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lockscreen_notifications_option"

    .line 1682
    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-gt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSideSyncEnabled()Z
    .locals 1

    .line 1194
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "sidesync_source_connect"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTempMuteSettingValueOn()Z
    .locals 1

    .line 1715
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "mode_ringer_time_on"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTwoPhoneCallEnabled()Z
    .locals 1

    .line 2348
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "two_call_enabled"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTwoPhoneRegistered()Z
    .locals 1

    .line 2340
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "two_register"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTwoPhoneSMSEnabled()Z
    .locals 1

    .line 2352
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "two_sms_enabled"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTypoNotificationOn()Z
    .locals 1

    .line 2192
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lockscreen_minimizing_notification"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUltraPowerSavingMode()Z
    .locals 2

    .line 1330
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingModeLegacy()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "minimal_battery_use"

    .line 1331
    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isUltraPowerSavingModeLegacy()Z
    .locals 1

    .line 1335
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "ultra_powersaving_mode"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUserSwitcherSettingOn()Z
    .locals 2

    .line 1351
    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_MUM_LOCKSCREEN_BUTTON:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "user_switcher_enabled"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isVoiceAssistantEnabled()Z
    .locals 2

    .line 1659
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "enabled_accessibility_services"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    .line 1660
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "(?i).*com.samsung.android.app.talkback.TalkBackService.*"

    .line 1662
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "(?i).*com.samsung.android.marvin.talkback.TalkBackService.*"

    .line 1663
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isWhiteKeyguardStatusBar()Z
    .locals 1

    .line 950
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "white_lockscreen_statusbar"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWhiteKeyguardWallpaper()Z
    .locals 1

    .line 961
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "white_lockscreen_wallpaper"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onUserSwitched()V
    .locals 2

    .line 827
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/util/SettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 828
    invoke-direct {p0}, Lcom/android/systemui/util/SettingsHelper;->readSettingsDB()V

    .line 831
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/util/SettingsHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/util/SettingsHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/util/SettingsHelper;)V

    const-string/jumbo p0, "onUserSwitched"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x5

    .line 834
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setPriority(I)V

    .line 835
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public varargs registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V
    .locals 5

    .line 844
    monitor-enter p0

    :try_start_0
    const-string v0, "SettingsHelper"

    .line 845
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** register listener for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    array-length v0, p2

    .line 847
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_2

    .line 849
    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    aget-object v3, p2, p1

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 850
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "SettingsHelper"

    .line 851
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Object tried to add another listener : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x5

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    .line 854
    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    aget-object v3, p2, p1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    aget-object v3, p2, p1

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 858
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setAdaptiveBluelight(I)V
    .locals 3

    .line 2109
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blue_light_filter_adaptive_mode"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2110
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {p0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$Item;->setIntValue(I)V

    return-void
.end method

.method public setAdaptiveColorMode(I)V
    .locals 3

    .line 1038
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_adaptive_color"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1040
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {p0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$Item;->setIntValue(I)V

    return-void
.end method

.method public setAssistant(Ljava/lang/String;)V
    .locals 1

    .line 1842
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "assistant"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public setBlueLightFilterMode(Ljava/lang/String;I)V
    .locals 3

    .line 2086
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "blue_light_filter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x2

    if-nez v1, :cond_1

    const-string v0, "blue_light_filter_opacity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2092
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0, p2, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2093
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/systemui/util/SettingsHelper$Item;->setIntValue(I)V

    goto :goto_0

    .line 2088
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0, p2, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2089
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/systemui/util/SettingsHelper$Item;->setIntValue(I)V

    :goto_0
    return-void
.end method

.method public setBouncerOneHandPosition(I)V
    .locals 1

    .line 2272
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "bouncer_one_hand_position"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setCallScreenRotationAllowed(Z)V
    .locals 1

    .line 1730
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "call_auto_rotation"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setDirectQuickSettingArea(I)V
    .locals 1

    .line 2037
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "swipe_directly_to_quick_setting_area"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setDirectQuickSettingPosition(Ljava/lang/String;)V
    .locals 1

    .line 2048
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "swipe_directly_to_quick_setting_position"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public setEdgeBackDisableByPolicy(Z)V
    .locals 1

    .line 2217
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "navigation_bar_gesture_disabled_by_policy"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setExpandQsAtOnceEnabled(I)V
    .locals 1

    .line 2026
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "swipe_directly_to_quick_setting"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setFingerprintSensorPopupDoNotShowAgain(Z)V
    .locals 1

    .line 2252
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "fingerprint_sensor_block_popup_show_again"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setFlashLightAvailable(I)V
    .locals 1

    .line 1887
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "flashlight_available"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setFlashLightEnabled(I)V
    .locals 1

    .line 1890
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "flashlight_enabled"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setFlashLightLevel(I)V
    .locals 3

    .line 1883
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "Flashlight_brightness_level"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1884
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {p0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$Item;->setIntValue(I)V

    return-void
.end method

.method public setGameToolsEnabled(Z)V
    .locals 1

    .line 2177
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "game_show_floating_icon"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setHomeScreenRotationAllowed(Z)V
    .locals 1

    .line 1723
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    xor-int/lit8 p1, p1, 0x1

    const-string/jumbo v0, "sehome_portrait_mode_only"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setLocationMode(I)V
    .locals 1

    .line 2361
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "location_mode"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setLockScreenRotationAllowed(Z)V
    .locals 3

    .line 1923
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1924
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "lock_screen_allow_rotation"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1925
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {p0, v2}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$Item;->setIntValue(I)V

    :cond_0
    return-void
.end method

.method public setNavigationBarColor(I)V
    .locals 1

    .line 2134
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "navigationbar_color"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setNavigationBarCurrentColor(I)V
    .locals 1

    .line 2139
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "navigationbar_current_color"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setNavigationBarRotateSuggestion(Z)V
    .locals 1

    .line 2159
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "navigation_bar_rotate_suggestion_enabled"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setNavigationBarUseThemeDefault(I)V
    .locals 1

    .line 2149
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "navigationbar_use_theme_default"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setNotificationSortOrderValue(I)V
    .locals 1

    .line 1372
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "notification_sort_order"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setPluginLockValue(II)V
    .locals 1

    .line 1902
    sget-boolean v0, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string/jumbo p1, "plugin_lock_sub_enabled"

    goto :goto_0

    :cond_0
    const-string p1, "lockstar_enabled"

    .line 1903
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setQSButtonGridPopupEnabled(I)V
    .locals 1

    .line 1361
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "quickstar_qs_tile_layout_custom_matrix"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setScheduledBluelight(I)V
    .locals 3

    .line 2113
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blue_light_filter_scheduled"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2114
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {p0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$Item;->setIntValue(I)V

    return-void
.end method

.method public setShowNavigationForSubscreen(Z)V
    .locals 1

    .line 2307
    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    if-eqz v0, :cond_0

    .line 2308
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "show_navigation_for_subscreen"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public setTempMuteSettingValue(I)V
    .locals 2

    .line 1710
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mode_ringer_time_on"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1711
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {p0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$Item;->setIntValue(I)V

    return-void
.end method

.method public setVoiceInteractionServiceAssistant(Ljava/lang/String;)V
    .locals 1

    .line 1847
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "voice_interaction_service"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public setVoiceRecognitionService(Ljava/lang/String;)V
    .locals 1

    .line 1852
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "voice_recognition_service"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public setWhiteKeyguardNavigationBar(I)V
    .locals 3

    .line 1226
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "white_lockscreen_navigationbar"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1228
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {p0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$Item;->setIntValue(I)V

    return-void
.end method

.method public setWhiteKeyguardStatusBar(I)V
    .locals 3

    .line 1214
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "white_lockscreen_statusbar"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1216
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {p0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$Item;->setIntValue(I)V

    return-void
.end method

.method public setWhiteKeyguardWallpaper(I)V
    .locals 3

    .line 1220
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "white_lockscreen_wallpaper"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1222
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {p0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$Item;->setIntValue(I)V

    return-void
.end method

.method public unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V
    .locals 4

    .line 879
    monitor-enter p0

    :try_start_0
    const-string v0, "SettingsHelper"

    .line 880
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** unregister listener for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 884
    iget-object v1, p0, Lcom/android/systemui/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 886
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_1

    .line 888
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 889
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 890
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 893
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 894
    iget-object v1, p0, Lcom/android/systemui/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 898
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public useMediaResumption()Z
    .locals 1

    .line 1866
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "qs_media_resumption"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public useQsMediaPlayer()Z
    .locals 1

    .line 1859
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "qs_media_controls"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
